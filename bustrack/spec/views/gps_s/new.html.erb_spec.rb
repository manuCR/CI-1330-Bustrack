require 'rails_helper'

RSpec.describe "gps_s/new", :type => :view do
  before(:each) do
    assign(:gps, Gps.new(
      :id_gps => "MyString"
    ))
  end

  it "renders new gps form" do
    render

    assert_select "form[action=?][method=?]", gps_s_path, "post" do

      assert_select "input#gps_id_gps[name=?]", "gps[id_gps]"
    end
  end
end
