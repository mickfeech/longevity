module Longevity

  class Parser
    def self.parse_html(product)
      mechanize = Mechanize.new
      mechanize.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      page = mechanize.get(product.web)
      if product.web.include? 'en.wikipedia.org'
        doc = Nokogiri::HTML(page.body).search("table[@class='infobox vevent'] tr th a[text()='#{product.version_test}']").first.parent.parent
        doc.search('td').text.match(/(\d+)(\.\d+)?(\.\d+)/)[0]
      end
    end
  end

end
