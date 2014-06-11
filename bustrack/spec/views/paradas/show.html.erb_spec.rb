require 'rails_helper'

RSpec.describe "paradas/show", :type => :view do
  before(:each) do
    @parada = assign(:parada, Parada.create!(
       :nombre => 'Nombre',
       :techo => 'false',
       :latitud => '1.5',
       :longitud => '1.6'))
  end

  it "renders attributes in <p>" do
    render
    rendered.should match(/Nombre/)
    rendered.should match(/false/)
    rendered.should match(/1.5/)
    rendered.should match(/1.6/)
  end
end
