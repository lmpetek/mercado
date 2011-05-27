require 'test_helper'

class ElementVariableValorsControllerTest < ActionController::TestCase
  setup do
    @element_variable_valor = element_variable_valors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:element_variable_valors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create element_variable_valor" do
    assert_difference('ElementVariableValor.count') do
      post :create, :element_variable_valor => @element_variable_valor.attributes
    end

    assert_redirected_to element_variable_valor_path(assigns(:element_variable_valor))
  end

  test "should show element_variable_valor" do
    get :show, :id => @element_variable_valor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @element_variable_valor.to_param
    assert_response :success
  end

  test "should update element_variable_valor" do
    put :update, :id => @element_variable_valor.to_param, :element_variable_valor => @element_variable_valor.attributes
    assert_redirected_to element_variable_valor_path(assigns(:element_variable_valor))
  end

  test "should destroy element_variable_valor" do
    assert_difference('ElementVariableValor.count', -1) do
      delete :destroy, :id => @element_variable_valor.to_param
    end

    assert_redirected_to element_variable_valors_path
  end
end
