require 'test_helper'

class JavalecturesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get javalectures_new_url
    assert_response :success
  end

  test "should get create" do
    get javalectures_create_url
    assert_response :success
  end

  test "should get destroy" do
    get javalectures_destroy_url
    assert_response :success
  end

  test "should get index" do
    get javalectures_index_url
    assert_response :success
  end

end
