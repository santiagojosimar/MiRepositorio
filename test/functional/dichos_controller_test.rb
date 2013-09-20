require 'test_helper'

class DichosControllerTest < ActionController::TestCase
  setup do
    @dicho = dichos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dichos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dicho" do
    assert_difference('Dicho.count') do
      post :create, :dicho => { :dicho => @dicho.dicho, :nombre => @dicho.nombre }
    end

    assert_redirected_to dicho_path(assigns(:dicho))
  end

  test "should show dicho" do
    get :show, :id => @dicho
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dicho
    assert_response :success
  end

  test "should update dicho" do
    put :update, :id => @dicho, :dicho => { :dicho => @dicho.dicho, :nombre => @dicho.nombre }
    assert_redirected_to dicho_path(assigns(:dicho))
  end

  test "should destroy dicho" do
    assert_difference('Dicho.count', -1) do
      delete :destroy, :id => @dicho
    end

    assert_redirected_to dichos_path
  end
end
