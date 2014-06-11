require 'rails_helper'

RSpec.describe "Rutas", :type => :request do
  describe "GET /rutas" do
    it "works! (now write some real specs)" do
      get rutas_path
      expect(response.status).to be(200)
    end
  end
end
