require 'rails_helper'

RSpec.describe "gps_s/edit", :type => :view do
  before(:each) do
    @gps = assign(:gps, Gps.create!(
      :id_gps => "MyString",
      :ultima_latitud => 1.5,
      :ultima_logitud => 1.5
    ))
  end

  it "renders the edit gps form" do
    render

    assert_select "form[action=?][method=?]", gps_path(@gps), "post" do

      assert_select "input#gps_id_gps[name=?]", "gps[id_gps]"

      assert_select "input#gps_ultima_latitud[name=?]", "gps[ultima_latitud]"

      assert_select "input#gps_ultima_logitud[name=?]", "gps[ultima_logitud]"
    end
  end
end
