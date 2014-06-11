require 'rails_helper'

RSpec.describe "rutas/index", :type => :view do
  before(:each) do
    assign(:rutas, [
      Ruta.create!(
       :nombre => 'Nombre',
       :frecuencia => 'Frecuencia',
       :precio => '1',
       :horario => 'Horario'),
      Ruta.create!(
       :nombre => 'Nombre',
       :frecuencia => 'Frecuencia',
       :precio => '1',
       :horario => 'Horario')
    ])
  end

  it "renders a list of rutas" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Frecuencia".to_s, :count => 2
    assert_select "tr>td", :text => "1".to_s, :count => 2
    assert_select "tr>td", :text => "Horario".to_s, :count => 2
  end
end
