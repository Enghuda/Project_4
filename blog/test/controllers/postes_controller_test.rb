require 'test_helper'

class PostesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get postes_home_url
    assert_response :success
  end

  test "should get about" do
    get postes_about_url
    assert_response :success
  end

end
