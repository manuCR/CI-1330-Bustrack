require 'rails_helper'

RSpec.describe "buses/edit", :type => :view do
  before(:each) do
    @bus = assign(:bus, Bus.create!(
      :placa => "MyString"
    ))
  end

  it "renders the edit bus form" do
    render

    assert_select "form[action=?][method=?]", bus_path(@bus), "post" do

      assert_select "input#bus_placa[name=?]", "bus[placa]"
    end
  end
end
