require 'rails_helper'

RSpec.describe "buses/index", :type => :view do
  before(:each) do
    assign(:buses, [
      Bus.create!(
        :placa => "SJB-201"
      ),
      Bus.create!(
        :placa => "SJB-201"
      )
    ])
  end

  it "renders a list of buses" do
    render
    assert_select "tr>td", :text => "SJB-201".to_s, :count => 2
  end
end
