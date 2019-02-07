require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get addresses_index_url
    assert_response :success
  end

  test "should get new" do
    get addresses_new_url
    assert_response :success
  end

  test "should get edit" do
    get addresses_edit_url
    assert_response :success
  end

  test "should get update" do
    get addresses_update_url
    assert_response :success
  end

  test "should get create" do
    get addresses_create_url
    assert_response :success
  end

  test "should get destroy" do
    get addresses_destroy_url
    assert_response :success
  end

  test "should get show" do
    get addresses_show_url
    assert_response :success
  end

end
