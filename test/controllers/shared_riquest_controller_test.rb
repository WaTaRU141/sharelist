require 'test_helper'

class SharedRiquestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shared_riquest_index_url
    assert_response :success
  end

end
