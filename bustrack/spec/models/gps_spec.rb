require 'rails_helper'

RSpec.describe Gps, :type => :model do
    it 'invalido sin una placa' do
    bus = Bus.new
    bus.should_not be_valid
  end

  it 'se puede agregar un gps a un bus' do
    b1 = Bus.new(id: 1,placa:"SJB-201")
    g1 = Gps.new(id: 1, id_gps: "adsfasdfasdf")
    b1.gps = g1
    b1.gps.id_gps.should == "adsfasdfasdf"
  end

  it 'invalido con id_gps repetida' do
    g = Gps.create(id_gps: "adsfasdfasdf")
    g1 = Gps.create(id_gps: "adsfasdfasdf")
    g1.should_not be_valid
  end

  it 'agregar un bus con su gps a una ruta y validar la ruta' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    b1 = Bus.new(id: 1,placa:"SJB-201")
    g1 = Gps.new(id: 1, id_gps: "adsfasdfasdf")
    b1.gps = g1
    r1.bus.push(b1)
    g1.bus.ruta.nombre.should == "ruta1"
  end

end
