require 'test_helper'

class ElementVariablePreciosControllerTest < ActionController::TestCase
  setup do
    @element_variable_precio = element_variable_precios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:element_variable_precios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create element_variable_precio" do
    assert_difference('ElementVariablePrecio.count') do
      post :create, :element_variable_precio => @element_variable_precio.attributes
    end

    assert_redirected_to element_variable_precio_path(assigns(:element_variable_precio))
  end

  test "should show element_variable_precio" do
    get :show, :id => @element_variable_precio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @element_variable_precio.to_param
    assert_response :success
  end

  test "should update element_variable_precio" do
    put :update, :id => @element_variable_precio.to_param, :element_variable_precio => @element_variable_precio.attributes
    assert_redirected_to element_variable_precio_path(assigns(:element_variable_precio))
  end

  test "should destroy element_variable_precio" do
    assert_difference('ElementVariablePrecio.count', -1) do
      delete :destroy, :id => @element_variable_precio.to_param
    end

    assert_redirected_to element_variable_precios_path
  end
end
