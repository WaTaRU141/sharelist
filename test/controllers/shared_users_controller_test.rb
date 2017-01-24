require 'test_helper'

class SharedUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get shared_users" do
    get shared_users_shared_users_url
    assert_response :success
  end

end
