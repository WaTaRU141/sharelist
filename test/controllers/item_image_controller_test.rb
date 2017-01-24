require 'test_helper'

class ItemImageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get item_image_new_url
    assert_response :success
  end

  test "should get create" do
    get item_image_create_url
    assert_response :success
  end

  test "should get update" do
    get item_image_update_url
    assert_response :success
  end

  test "should get delate" do
    get item_image_delate_url
    assert_response :success
  end

end
