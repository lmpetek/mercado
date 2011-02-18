require 'test_helper'

class VariablePreciosControllerTest < ActionController::TestCase
  setup do
    @variable_precio = variable_precios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:variable_precios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create variable_precio" do
    assert_difference('VariablePrecio.count') do
      post :create, :variable_precio => @variable_precio.attributes
    end

    assert_redirected_to variable_precio_path(assigns(:variable_precio))
  end

  test "should show variable_precio" do
    get :show, :id => @variable_precio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @variable_precio.to_param
    assert_response :success
  end

  test "should update variable_precio" do
    put :update, :id => @variable_precio.to_param, :variable_precio => @variable_precio.attributes
    assert_redirected_to variable_precio_path(assigns(:variable_precio))
  end

  test "should destroy variable_precio" do
    assert_difference('VariablePrecio.count', -1) do
      delete :destroy, :id => @variable_precio.to_param
    end

    assert_redirected_to variable_precios_path
  end
end
