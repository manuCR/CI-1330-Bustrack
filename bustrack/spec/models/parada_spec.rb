require 'rails_helper'

RSpec.describe Parada, :type => :model do
  it 'invalido sin un nombre' do
    parada = Parada.new
    parada.should_not be_valid
  end

  it 'se puede agregar relacion' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    p1 = Parada.new(id: 1,nombre:"parada1")
    p1.ruta.push(r1)
    p1.ruta[0].id.should == 1
    p1.ruta[0].nombre.should == "ruta1"
  end

  it 'se puede ver la tabla intermedia' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    p1 = Parada.new(id: 1,nombre:"parada1")
    p1.ruta.push(r1)
    p1.ruta_parada[0].should be_valid
  end

  it 'se puede modificar la tabla intermedia' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    p1 = Parada.new(id: 1,nombre:"parada1")
    p1.ruta.push(r1)
    p1.ruta_parada[0].tipo = 8
    p1.ruta_parada[0].tipo.should == 8
  end

end