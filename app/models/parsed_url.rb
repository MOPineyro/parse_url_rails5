class ParsedUrl < ApplicationRecord
  before_save :parse

  private
    def parse
      page = HTTParty.get(self.url)
      parse_page = Nokogiri::HTML(page.body)
      parse_page.css('h1').each do |tag|
        self.h1_tags << tag.text.gsub(/\d+/, "").squeeze(" ").strip
      end
      parse_page.css('h2').each do |tag|
        self.h2_tags << tag.text.gsub(/\d+/, "").squeeze(" ").strip
      end
      parse_page.css('h3').each do |tag|
        self.h3_tags << tag.text.gsub(/\d+/, "").squeeze(" ").strip
      end
      parse_page.css('a').each do |link|
        self.links << link.attributes["href"].text
      end
    end
end
