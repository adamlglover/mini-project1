require 'test_helper'

class ProductControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get quickly" do
    get :quickly
    assert_response :success
  end

  test "should get slowly" do
    get :slowly
    assert_response :success
  end

end
