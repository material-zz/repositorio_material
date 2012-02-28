require 'test_helper'

class MateriaisControllerTest < ActionController::TestCase
  setup do
    @materiai = materiais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materiais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materiai" do
    assert_difference('Materiai.count') do
      post :create, materiai: @materiai.attributes
    end

    assert_redirected_to materiai_path(assigns(:materiai))
  end

  test "should show materiai" do
    get :show, id: @materiai.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materiai.to_param
    assert_response :success
  end

  test "should update materiai" do
    put :update, id: @materiai.to_param, materiai: @materiai.attributes
    assert_redirected_to materiai_path(assigns(:materiai))
  end

  test "should destroy materiai" do
    assert_difference('Materiai.count', -1) do
      delete :destroy, id: @materiai.to_param
    end

    assert_redirected_to materiais_path
  end
end
