require 'test_helper'

class ParsedUrlTest < ActiveSupport::TestCase
  setup do
    @parsed_url = ParsedUrl.create(url: parsed_urls(:one)[:url])
  end

  test "validates format of url" do
    parsed_url = ParsedUrl.create(url: "lim.global")
    assert_not parsed_url.valid?
    assert_equal ["format of url must be: http://example.com or https://example.com"], parsed_url.errors.messages[:url]
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
