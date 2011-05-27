require 'test_helper'

class ValoresElementosVariablesControllerTest < ActionController::TestCase
  setup do
    @valores_elementos_variable = valores_elementos_variables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valores_elementos_variables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valores_elementos_variable" do
    assert_difference('ValoresElementosVariable.count') do
      post :create, :valores_elementos_variable => @valores_elementos_variable.attributes
    end

    assert_redirected_to valores_elementos_variable_path(assigns(:valores_elementos_variable))
  end

  test "should show valores_elementos_variable" do
    get :show, :id => @valores_elementos_variable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @valores_elementos_variable.to_param
    assert_response :success
  end

  test "should update valores_elementos_variable" do
    put :update, :id => @valores_elementos_variable.to_param, :valores_elementos_variable => @valores_elementos_variable.attributes
    assert_redirected_to valores_elementos_variable_path(assigns(:valores_elementos_variable))
  end

  test "should destroy valores_elementos_variable" do
    assert_difference('ValoresElementosVariable.count', -1) do
      delete :destroy, :id => @valores_elementos_variable.to_param
    end

    assert_redirected_to valores_elementos_variables_path
  end
end
