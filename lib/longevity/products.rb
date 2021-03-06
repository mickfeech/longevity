module Longevity
  class Products < Hashie::Dash
    include Hashie::Extensions::DeepLocate
    include Hashie::Extensions::MethodAccess

    def self.all
      YAML.load_file('lib/longevity/fixtures/products.yml')
    end

    def self.find(name)
      products = all
      products.extend(Hashie::Extensions::DeepLocate)
      search = products.deep_locate -> (key, value, object) { key == :name && value.include?(name) }
      if search.size == 1
        search = search.first
        Hashie::Mash.new search
      end
    end

    def self.version(product)
      Longevity::Parser.parse_html(product)
    end

  end
end
