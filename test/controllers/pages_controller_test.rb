require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get About" do
    get pages_About_url
    assert_response :success
  end

  test "should get Contact" do
    get pages_Contact_url
    assert_response :success
  end

  test "should get Help" do
    get pages_Help_url
    assert_response :success
  end

  test "should get Home" do
    get pages_Home_url
    assert_response :success
  end

end
