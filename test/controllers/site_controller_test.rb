require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get mostpopular" do
    get site_mostpopular_url
    assert_response :success
  end

  test "should get categories" do
    get site_categories_url
    assert_response :success
  end

  test "should get platforms" do
    get site_platforms_url
    assert_response :success
  end

end
