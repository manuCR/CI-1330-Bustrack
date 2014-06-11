require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ParadasController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Parada. As you add validations to Parada, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {{"nombre" => "MyString", "latitud" => "9,5468555", "longitud" => "-9,5468555"}}

  let(:invalid_attributes) {{"nombre" => "", "latitud" => "9", "longitud" => "as"}}

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ParadasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all paradas as @paradas" do
      parada = Parada.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:paradas)).to eq([parada])
    end
  end

  describe "GET show" do
    it "assigns the requested parada as @parada" do
      parada = Parada.create! valid_attributes
      get :show, {:id => parada.to_param}, valid_session
      expect(assigns(:parada)).to eq(parada)
    end
  end

  describe "GET new" do
    it "assigns a new parada as @parada" do
      get :new, {}, valid_session
      expect(assigns(:parada)).to be_a_new(Parada)
    end
  end

  describe "GET edit" do
    it "assigns the requested parada as @parada" do
      parada = Parada.create! valid_attributes
      get :edit, {:id => parada.to_param}, valid_session
      expect(assigns(:parada)).to eq(parada)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Parada" do
        expect {
          post :create, {:parada => valid_attributes}, valid_session
        }.to change(Parada, :count).by(1)
      end

      it "assigns a newly created parada as @parada" do
        post :create, {:parada => valid_attributes}, valid_session
        expect(assigns(:parada)).to be_a(Parada)
        expect(assigns(:parada)).to be_persisted
      end

      it "redirects to the created parada" do
        post :create, {:parada => valid_attributes}, valid_session
        expect(response).to redirect_to(Parada.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved parada as @parada" do
        post :create, {:parada => invalid_attributes}, valid_session
        expect(assigns(:parada)).to be_a_new(Parada)
      end

      it "re-renders the 'new' template" do
        post :create, {:parada => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {"nombre" => "Extra", "latitud" => "15,5468555", "longitud" => "-20,5468555"}
      }

      it "assigns the requested parada as @parada" do
        parada = Parada.create! valid_attributes
        put :update, {:id => parada.to_param, :parada => valid_attributes}, valid_session
        expect(assigns(:parada)).to eq(parada)
      end

      it "redirects to the parada" do
        parada = Parada.create! valid_attributes
        put :update, {:id => parada.to_param, :parada => valid_attributes}, valid_session
        expect(response).to redirect_to(parada)
      end
    end

    describe "with invalid params" do
      it "assigns the parada as @parada" do
        parada = Parada.create! valid_attributes
        put :update, {:id => parada.to_param, :parada => invalid_attributes}, valid_session
        expect(assigns(:parada)).to eq(parada)
      end

      it "re-renders the 'edit' template" do
        parada = Parada.create! valid_attributes
        put :update, {:id => parada.to_param, :parada => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested parada" do
      parada = Parada.create! valid_attributes
      expect {
        delete :destroy, {:id => parada.to_param}, valid_session
      }.to change(Parada, :count).by(-1)
    end

    it "redirects to the paradas list" do
      parada = Parada.create! valid_attributes
      delete :destroy, {:id => parada.to_param}, valid_session
      expect(response).to redirect_to(paradas_url)
    end
  end

end
