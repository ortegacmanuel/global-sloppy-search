require 'test_helper'

class SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_url
    assert_response :success
  end

end
