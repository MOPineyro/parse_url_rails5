require 'test_helper'

class ParsedUrlTest < ActiveSupport::TestCase
  test "Parses URL h1 tags" do
    ParsedUrl.new(url: "http://lim.global")
    assert parsed_url.h1.first == "<a href="http://www.lim.global">Language In Motion</a>"
  end
end
