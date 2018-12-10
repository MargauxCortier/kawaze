require 'test_helper'

class FindUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get find_users_show_url
    assert_response :success
  end

  test "should get find" do
    get find_users_find_url
    assert_response :success
  end

end
