require 'rails_helper'

RSpec.describe "gps_s/edit", :type => :view do
  before(:each) do
    @gps = assign(:gps, Gps.create!(
      :id_gps => "MyString"
    ))
  end

  it "renders the edit gps form" do
    render

    assert_select "form[action=?][method=?]", gps_path(@gps), "post" do

      assert_select "input#gps_id_gps[name=?]", "gps[id_gps]"
    end
  end
end
