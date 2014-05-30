require 'test_helper'

class ParadasControllerTest < ActionController::TestCase
  setup do
    @parada = paradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paradas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parada" do
    assert_difference('Parada.count') do
      post :create, parada: { latitid: @parada.latitid, longuitud: @parada.longuitud, nombre: @parada.nombre, techo: @parada.techo }
    end

    assert_redirected_to parada_path(assigns(:parada))
  end

  test "should show parada" do
    get :show, id: @parada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parada
    assert_response :success
  end

  test "should update parada" do
    patch :update, id: @parada, parada: { latitid: @parada.latitid, longuitud: @parada.longuitud, nombre: @parada.nombre, techo: @parada.techo }
    assert_redirected_to parada_path(assigns(:parada))
  end

  test "should destroy parada" do
    assert_difference('Parada.count', -1) do
      delete :destroy, id: @parada
    end

    assert_redirected_to paradas_path
  end
end
