require 'rails_helper'

RSpec.describe "gps_s/show", :type => :view do
  before(:each) do
    @gps = assign(:gps, Gps.create!(
      :id_gps => "Id Gps",
      :ultima_latitud => 1.5,
      :ultima_logitud => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Id Gps/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
