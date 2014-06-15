require 'rails_helper'

RSpec.describe "buses/index", :type => :view do
  before(:each) do
    assign(:buses, [
      Bus.create!(
        :placa => "Placa"
      ),
      Bus.create!(
        :placa => "Placa"
      )
    ])
  end

  it "renders a list of buses" do
    render
    assert_select "tr>td", :text => "Placa".to_s, :count => 2
  end
end
