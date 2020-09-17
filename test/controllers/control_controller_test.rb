require 'test_helper'

class ControlControllerTest < ActionDispatch::IntegrationTest
  test "should get HomePage" do
    get control_HomePage_url
    assert_response :success
  end

  test "should get AddBook" do
    get control_AddBook_url
    assert_response :success
  end

  test "should get UpdateBook" do
    get control_UpdateBook_url
    assert_response :success
  end

  test "should get ShowDetails" do
    get control_ShowDetails_url
    assert_response :success
  end

  test "should get Delete" do
    get control_Delete_url
    assert_response :success
  end

end
