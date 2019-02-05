require 'test_helper'

class LabsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get labs_index_url
    assert_response :success
  end

  test "should get create" do
    get labs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get labs_destroy_url
    assert_response :success
  end

  test "should get new" do
    get labs_new_url
    assert_response :success
  end

end
