require 'rails_helper'

RSpec.describe "gps_s/index", :type => :view do
  before(:each) do
    assign(:gps_s, [
      Gps.create!(
        :id_gps => "Id Gps"
      ),
      Gps.create!(
        :id_gps => "Id Gps1"
      )
    ])
  end

  it "renders a list of gps_s" do
    render
    assert_select "tr>td", :text => "Id Gps".to_s, :count => 1
    assert_select "tr>td", :text => "Id Gps1".to_s, :count => 1
  end
end
