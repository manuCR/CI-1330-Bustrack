require 'rails_helper'

RSpec.describe "paradas/new", :type => :view do
  before(:each) do
    assign(:parada, Parada.new(
       :nombre => 'Nombre',
       :techo => 'false',
       :latitud => '1.5',
       :longitud => '1.6'))
  end

  it "renders new parada form" do
    render

    assert_select "form[action=?][method=?]", paradas_path, "post" do
      assert_select "input#parada_nombre[name=?]", "parada[nombre]"
      assert_select "input#parada_techo[name=?]", "parada[techo]"
      assert_select "input#parada_latitud[name=?]", "parada[latitud]"
      assert_select "input#parada_longitud[name=?]", "parada[longitud]"
    end
  end
end
