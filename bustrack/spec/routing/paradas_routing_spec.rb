require "rails_helper"

RSpec.describe ParadasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/paradas").to route_to("paradas#index")
    end

    it "routes to #new" do
      expect(:get => "/paradas/new").to route_to("paradas#new")
    end

    it "routes to #show" do
      expect(:get => "/paradas/1").to route_to("paradas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/paradas/1/edit").to route_to("paradas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/paradas").to route_to("paradas#create")
    end

    it "routes to #update" do
      expect(:put => "/paradas/1").to route_to("paradas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/paradas/1").to route_to("paradas#destroy", :id => "1")
    end

  end
end
