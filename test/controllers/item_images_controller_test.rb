require 'test_helper'

class ItemImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get item_images_new_url
    assert_response :success
  end

end
