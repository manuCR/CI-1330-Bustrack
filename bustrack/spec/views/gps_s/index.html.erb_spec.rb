require 'rails_helper'

RSpec.describe "gps_s/index", :type => :view do
  before(:each) do
    assign(:gps_s, [
      Gps.create!(
        :id_gps => "Id Gps"
      ),
      Gps.create!(
        :id_gps => "Id Gps"
      )
    ])
  end

  it "renders a list of gps_s" do
    render
    assert_select "tr>td", :text => "Id Gps".to_s, :count => 2
  end
end
