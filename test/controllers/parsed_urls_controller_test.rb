require 'test_helper'

class ParsedUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parsed_url = parsed_urls(:one)
  end

  test "should get index" do
    get parsed_urls_url, as: :json
    assert_response :success
  end

  test "should create parsed_url" do
    assert_difference('ParsedUrl.count') do
      post parsed_urls_url, params: { parsed_url: { h1: @parsed_url.h1, h2: @parsed_url.h2, h3: @parsed_url.h3, links: @parsed_url.links, url: @parsed_url.url } }, as: :json
    end

    assert_response 201
  end

  test "should show parsed_url" do
    get parsed_url_url(@parsed_url), as: :json
    assert_response :success
  end

  test "should update parsed_url" do
    patch parsed_url_url(@parsed_url), params: { parsed_url: { h1: @parsed_url.h1, h2: @parsed_url.h2, h3: @parsed_url.h3, links: @parsed_url.links, url: @parsed_url.url } }, as: :json
    assert_response 200
  end

  test "should destroy parsed_url" do
    assert_difference('ParsedUrl.count', -1) do
      delete parsed_url_url(@parsed_url), as: :json
    end

    assert_response 204
  end
end
