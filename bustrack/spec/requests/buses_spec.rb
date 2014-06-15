require 'rails_helper'

RSpec.describe "Buses", :type => :request do
  describe "GET /buses" do
    it "works! (now write some real specs)" do
      get buses_path
      expect(response.status).to be(200)
    end
  end
end
