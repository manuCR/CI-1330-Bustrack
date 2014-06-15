require 'rails_helper'

RSpec.describe Ruta, :type => :model do
  it 'invalido sin un nombre' do
    ruta = Ruta.new
    ruta.should_not be_valid
  end

  it 'se puede agregar relacion' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    p1 = Parada.new(id: 1,nombre:"parada1")
    r1.parada.push(p1)
    r1.parada[0].id.should == 1
    r1.parada[0].nombre.should == "parada1"
  end

  it 'se puede ver la tabla intermedia' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    p1 = Parada.new(id: 1,nombre:"parada1")
    r1.parada.push(p1)
    r1.ruta_parada[0].should be_valid
  end

  it 'se puede modificar la tabla intermedia' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    p1 = Parada.new(id: 1,nombre:"parada1")
    r1.parada.push(p1)
    r1.ruta_parada[0].tipo = 8
    r1.ruta_parada[0].tipo.should == 8
  end

  it 'agregar un bus a una ruta' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    b1 = Bus.new(id: 1,placa:"SJB-201")
    r1.bus.push(b1)
    r1.bus[0].placa.should == "SJB-201"
  end

  it 'agregar un bus con su gps a una ruta y validar el gps' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    b1 = Bus.new(id: 1,placa:"SJB-201")
    g1 = Gps.new(id: 1, id_gps: "adsfasdfasdf")
    b1.gps = g1
    r1.bus.push(b1)
    r1.bus[0].gps.id_gps.should == "adsfasdfasdf"
  end

end
