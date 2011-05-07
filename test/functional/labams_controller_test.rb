require 'test_helper'

class LabamsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create labam" do
    assert_difference('Labam.count') do
      post :create, :labam => { }
    end

    assert_redirected_to labam_path(assigns(:labam))
  end

  test "should show labam" do
    get :show, :id => labams(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => labams(:one).to_param
    assert_response :success
  end

  test "should update labam" do
    put :update, :id => labams(:one).to_param, :labam => { }
    assert_redirected_to labam_path(assigns(:labam))
  end

  test "should destroy labam" do
    assert_difference('Labam.count', -1) do
      delete :destroy, :id => labams(:one).to_param
    end

    assert_redirected_to labams_path
  end
end
