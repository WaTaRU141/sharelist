require 'test_helper'

class ShareditemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shareditem_index_url
    assert_response :success
  end

  test "should get edit" do
    get shareditem_edit_url
    assert_response :success
  end

end
