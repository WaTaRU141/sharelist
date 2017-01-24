require 'test_helper'

class MatchingsControllerTest < ActionDispatch::IntegrationTest
  test "should get resouces" do
    get matchings_resouces_url
    assert_response :success
  end

  test "should get index" do
    get matchings_index_url
    assert_response :success
  end

  test "should get create" do
    get matchings_create_url
    assert_response :success
  end

  test "should get show" do
    get matchings_show_url
    assert_response :success
  end

  test "should get new" do
    get matchings_new_url
    assert_response :success
  end

  test "should get edit" do
    get matchings_edit_url
    assert_response :success
  end

  test "should get update" do
    get matchings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get matchings_destroy_url
    assert_response :success
  end

end
