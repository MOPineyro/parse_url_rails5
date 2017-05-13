require 'test_helper'

class ParsedUrlTest < ActiveSupport::TestCase
  setup do
    @parsed_url = ParsedUrl.create(url: parsed_urls(:one)[:url])
  end

  test "Parses URL header tags" do
    assert @parsed_url.h1_tags.first == "Language In Motion"
    assert @parsed_url.h2_tags.first == nil
    assert @parsed_url.h3_tags.second == "Start lessons today"
  end

  test "Parses URL link" do
    assert @parsed_url.links.first == "https://www.facebook.com/limlessons"
  end
end
