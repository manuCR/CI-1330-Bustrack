require 'rails_helper'

RSpec.describe "gps_s/show", :type => :view do
  before(:each) do
    @gps = assign(:gps, Gps.create!(
      :id_gps => "Id Gps"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Id Gps/)
  end
end
