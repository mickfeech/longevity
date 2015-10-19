module Longevity
  class Products

    def self.all
      YAML.load_file('lib/longevity/fixtures/products.yml')
    end
  end
end