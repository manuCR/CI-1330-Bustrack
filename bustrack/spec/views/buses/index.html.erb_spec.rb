require 'rails_helper'

RSpec.describe "buses/index", :type => :view do
  before(:each) do
    assign(:buses, [
      Bus.create!(
        :placa => "SJB-201"
      ),
      Bus.create!(
        :placa => "SJB-202"
      )
    ])
  end

  it "renders a list of buses" do
    render
    assert_select "tr>td", :text => "SJB-201".to_s, :count => 1
    assert_select "tr>td", :text => "SJB-202".to_s, :count => 1
  end
end
