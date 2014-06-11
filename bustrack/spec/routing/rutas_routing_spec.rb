require "rails_helper"

RSpec.describe RutasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rutas").to route_to("rutas#index")
    end

    it "routes to #new" do
      expect(:get => "/rutas/new").to route_to("rutas#new")
    end

    it "routes to #show" do
      expect(:get => "/rutas/1").to route_to("rutas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rutas/1/edit").to route_to("rutas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rutas").to route_to("rutas#create")
    end

    it "routes to #update" do
      expect(:put => "/rutas/1").to route_to("rutas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rutas/1").to route_to("rutas#destroy", :id => "1")
    end

  end
end
