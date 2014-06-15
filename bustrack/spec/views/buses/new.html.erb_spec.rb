require 'rails_helper'

RSpec.describe "buses/new", :type => :view do
  before(:each) do
    assign(:bus, Bus.new(
      :placa => "MyString"
    ))
  end

  it "renders new bus form" do
    render

    assert_select "form[action=?][method=?]", buses_path, "post" do

      assert_select "input#bus_placa[name=?]", "bus[placa]"
    end
  end
end
