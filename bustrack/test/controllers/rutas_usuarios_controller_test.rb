require 'test_helper'

class RutasUsuariosControllerTest < ActionController::TestCase
  setup do
    @rutas_usuario = rutas_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rutas_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rutas_usuario" do
    assert_difference('RutasUsuario.count') do
      post :create, rutas_usuario: {  }
    end

    assert_redirected_to rutas_usuario_path(assigns(:rutas_usuario))
  end

  test "should show rutas_usuario" do
    get :show, id: @rutas_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rutas_usuario
    assert_response :success
  end

  test "should update rutas_usuario" do
    patch :update, id: @rutas_usuario, rutas_usuario: {  }
    assert_redirected_to rutas_usuario_path(assigns(:rutas_usuario))
  end

  test "should destroy rutas_usuario" do
    assert_difference('RutasUsuario.count', -1) do
      delete :destroy, id: @rutas_usuario
    end

    assert_redirected_to rutas_usuarios_path
  end
end
