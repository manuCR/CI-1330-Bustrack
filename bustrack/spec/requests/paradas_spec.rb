require 'rails_helper'

RSpec.describe "Paradas", :type => :request do
  describe "GET /paradas" do
    it "works! (now write some real specs)" do
      get paradas_path
      expect(response.status).to be(200)
    end
  end
end
