require 'rails_helper'

RSpec.describe "rutas/edit", :type => :view do
  before(:each) do
    @ruta = assign(:ruta, Ruta.create!(
       :nombre => 'Nombre',
       :frecuencia => 'Frecuencia',
       :precio => '1',
       :horario => 'Horario'))
  end

  it "renders the edit ruta form" do
    render

    assert_select "form[action=?][method=?]", ruta_path(@ruta), "post" do
      assert_select "input#ruta_nombre[name=?]", "ruta[nombre]"
      assert_select "input#ruta_frecuencia[name=?]", "ruta[frecuencia]"
      assert_select "input#ruta_precio[name=?]", "ruta[precio]"
      assert_select "input#ruta_horario[name=?]", "ruta[horario]"
    end
  end
end
