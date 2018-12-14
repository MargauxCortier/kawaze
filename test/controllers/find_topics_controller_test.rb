require 'test_helper'

class FindTopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get find_topics_show_url
    assert_response :success
  end

end
