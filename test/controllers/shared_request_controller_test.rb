require 'test_helper'

class SharedRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shared_request_index_url
    assert_response :success
  end

end
