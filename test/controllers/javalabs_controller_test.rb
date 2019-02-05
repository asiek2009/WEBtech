require 'test_helper'

class JavalabsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get javalabs_new_url
    assert_response :success
  end

  test "should get create" do
    get javalabs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get javalabs_destroy_url
    assert_response :success
  end

  test "should get index" do
    get javalabs_index_url
    assert_response :success
  end

end
