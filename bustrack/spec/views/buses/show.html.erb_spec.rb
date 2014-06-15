require 'rails_helper'

RSpec.describe "buses/show", :type => :view do
  before(:each) do
    @bus = assign(:bus, Bus.create!(
      :placa => "SJB-201"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Placa/)
  end
end
