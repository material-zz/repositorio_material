require 'test_helper'

class GerenciadorsControllerTest < ActionController::TestCase
  setup do
    @gerenciador = gerenciadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gerenciadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gerenciador" do
    assert_difference('Gerenciador.count') do
      post :create, gerenciador: @gerenciador.attributes
    end

    assert_redirected_to gerenciador_path(assigns(:gerenciador))
  end

  test "should show gerenciador" do
    get :show, id: @gerenciador.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gerenciador.to_param
    assert_response :success
  end

  test "should update gerenciador" do
    put :update, id: @gerenciador.to_param, gerenciador: @gerenciador.attributes
    assert_redirected_to gerenciador_path(assigns(:gerenciador))
  end

  test "should destroy gerenciador" do
    assert_difference('Gerenciador.count', -1) do
      delete :destroy, id: @gerenciador.to_param
    end

    assert_redirected_to gerenciadors_path
  end
end
