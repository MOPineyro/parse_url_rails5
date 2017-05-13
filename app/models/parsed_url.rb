class ParsedUrl < ApplicationRecord
  attr_accessible :url
  after_create :parse_url

  private
    def parse_url
      doc = Nokogiri::HTML(open(self.url))
      doc.css('h1').each do |link|
        puts h1.content
      end
    end
end
