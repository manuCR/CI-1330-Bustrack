require 'test_helper'

class IdentitiesControllerTest < ActionController::TestCase
  setup do
    @identity = identities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:identities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create identity" do
    assert_difference('Identity.count') do
      post :create, identity: { email: @identity.email, nombre: @identity.nombre, password_digest: @identity.password_digest }
    end

    assert_redirected_to identity_path(assigns(:identity))
  end

  test "should show identity" do
    get :show, id: @identity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @identity
    assert_response :success
  end

  test "should update identity" do
    patch :update, id: @identity, identity: { email: @identity.email, nombre: @identity.nombre, password_digest: @identity.password_digest }
    assert_redirected_to identity_path(assigns(:identity))
  end

  test "should destroy identity" do
    assert_difference('Identity.count', -1) do
      delete :destroy, id: @identity
    end

    assert_redirected_to identities_path
  end
end
