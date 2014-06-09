require 'test_helper'

class RutaParadasControllerTest < ActionController::TestCase
  setup do
    @ruta_parada = ruta_paradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruta_paradas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruta_parada" do
    assert_difference('RutaParada.count') do
      post :create, ruta_parada: { tipo: @ruta_parada.tipo }
    end

    assert_redirected_to ruta_parada_path(assigns(:ruta_parada))
  end

  test "should show ruta_parada" do
    get :show, id: @ruta_parada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruta_parada
    assert_response :success
  end

  test "should update ruta_parada" do
    patch :update, id: @ruta_parada, ruta_parada: { tipo: @ruta_parada.tipo }
    assert_redirected_to ruta_parada_path(assigns(:ruta_parada))
  end

  test "should destroy ruta_parada" do
    assert_difference('RutaParada.count', -1) do
      delete :destroy, id: @ruta_parada
    end

    assert_redirected_to ruta_paradas_path
  end
end
