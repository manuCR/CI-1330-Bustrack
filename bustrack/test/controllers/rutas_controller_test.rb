require 'test_helper'

class RutasControllerTest < ActionController::TestCase
  setup do
    @ruta = rutas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rutas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruta" do
    assert_difference('Ruta.count') do
      post :create, ruta: { frecuencia: @ruta.frecuencia, horario: @ruta.horario, nombre: @ruta.nombre, precio: @ruta.precio }
    end

    assert_redirected_to ruta_path(assigns(:ruta))
  end

  test "should show ruta" do
    get :show, id: @ruta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruta
    assert_response :success
  end

  test "should update ruta" do
    patch :update, id: @ruta, ruta: { frecuencia: @ruta.frecuencia, horario: @ruta.horario, nombre: @ruta.nombre, precio: @ruta.precio }
    assert_redirected_to ruta_path(assigns(:ruta))
  end

  test "should destroy ruta" do
    assert_difference('Ruta.count', -1) do
      delete :destroy, id: @ruta
    end

    assert_redirected_to rutas_path
  end
end
