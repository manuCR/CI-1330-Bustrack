require "rails_helper"

RSpec.describe GpsSController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gps_s").to route_to("gps_s#index")
    end

    it "routes to #new" do
      expect(:get => "/gps_s/new").to route_to("gps_s#new")
    end

    it "routes to #show" do
      expect(:get => "/gps_s/1").to route_to("gps_s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gps_s/1/edit").to route_to("gps_s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gps_s").to route_to("gps_s#create")
    end

    it "routes to #update" do
      expect(:put => "/gps_s/1").to route_to("gps_s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gps_s/1").to route_to("gps_s#destroy", :id => "1")
    end

  end
end
