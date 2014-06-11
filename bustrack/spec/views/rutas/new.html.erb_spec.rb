require 'rails_helper'

RSpec.describe "rutas/new", :type => :view do
  before(:each) do
    assign(:ruta, Ruta.new(
       :nombre => 'Nombre',
       :frecuencia => 'Frecuencia',
       :precio => '1',
       :horario => 'Horario'))
  end

  it "renders new ruta form" do
    render

    assert_select "form[action=?][method=?]", rutas_path, "post" do
      assert_select "input#ruta_nombre[name=?]", "ruta[nombre]"
      assert_select "input#ruta_frecuencia[name=?]", "ruta[frecuencia]"
      assert_select "input#ruta_precio[name=?]", "ruta[precio]"
      assert_select "input#ruta_horario[name=?]", "ruta[horario]"
    end
  end
end
