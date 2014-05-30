require 'test_helper'

class RutaControllerTest < ActionController::TestCase
  setup do
    @rutas = ruta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rutas" do
    assert_difference('Rutas.count') do
      post :create, rutas: { Fin_Latitud: @rutas.Fin_Latitud, Fin_Longuitud: @rutas.Fin_Longuitud, Frecuencia: @rutas.Frecuencia, Horario: @rutas.Horario, Inicio_Latitud: @rutas.Inicio_Latitud, Inicio_Longuitud: @rutas.Inicio_Longuitud, Precio: @rutas.Precio, nombre: @rutas.nombre }
    end

    assert_redirected_to rutas_path(assigns(:rutas))
  end

  test "should show rutas" do
    get :show, id: @rutas
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rutas
    assert_response :success
  end

  test "should update rutas" do
    patch :update, id: @rutas, rutas: { Fin_Latitud: @rutas.Fin_Latitud, Fin_Longuitud: @rutas.Fin_Longuitud, Frecuencia: @rutas.Frecuencia, Horario: @rutas.Horario, Inicio_Latitud: @rutas.Inicio_Latitud, Inicio_Longuitud: @rutas.Inicio_Longuitud, Precio: @rutas.Precio, nombre: @rutas.nombre }
    assert_redirected_to rutas_path(assigns(:rutas))
  end

  test "should destroy rutas" do
    assert_difference('Rutas.count', -1) do
      delete :destroy, id: @rutas
    end

    assert_redirected_to ruta_path
  end
end
