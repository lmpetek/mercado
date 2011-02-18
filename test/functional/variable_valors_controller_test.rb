require 'test_helper'

class VariableValorsControllerTest < ActionController::TestCase
  setup do
    @variable_valor = variable_valors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:variable_valors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create variable_valor" do
    assert_difference('VariableValor.count') do
      post :create, :variable_valor => @variable_valor.attributes
    end

    assert_redirected_to variable_valor_path(assigns(:variable_valor))
  end

  test "should show variable_valor" do
    get :show, :id => @variable_valor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @variable_valor.to_param
    assert_response :success
  end

  test "should update variable_valor" do
    put :update, :id => @variable_valor.to_param, :variable_valor => @variable_valor.attributes
    assert_redirected_to variable_valor_path(assigns(:variable_valor))
  end

  test "should destroy variable_valor" do
    assert_difference('VariableValor.count', -1) do
      delete :destroy, :id => @variable_valor.to_param
    end

    assert_redirected_to variable_valors_path
  end
end
