require 'rails_helper'

RSpec.describe Bus, :type => :model do
  it 'invalido sin una placa' do
    bus = Bus.new
    bus.should_not be_valid
  end

  it 'invalido con placa 201' do
    bus = Bus.new(placa:"201")
    bus.should_not be_valid
  end

  it 'invalido con placa -201' do
    bus = Bus.new(placa:"-201")
    bus.should_not be_valid
  end

  it 'invalido con placa AO-201' do
    bus = Bus.new(placa:"AO-201")
    bus.should_not be_valid
  end

  it 'invalido con placa AO-201' do
    bus = Bus.new(placa:"AO-201")
    bus.should_not be_valid
  end

  it 'invalido con placa SJB-1201' do
    bus = Bus.new(placa:"SJB-1201")
    bus.should_not be_valid
  end

  it 'agregar un bus a una ruta' do
    r1 = Ruta.new(id: 1, nombre:"ruta1")
    b1 = Bus.new(id: 1,placa:"SJB-201")
    b1.ruta = r1
    b1.ruta.nombre.should == "ruta1"
  end

  it 'se puede agregar un gps a un bus' do
    b1 = Bus.new(id: 1,placa:"SJB-201")
    g1 = Gps.new(id: 1, id_gps: "adsfasdfasdf")
    b1.gps = g1
    b1.gps.id_gps.should == "adsfasdfasdf"
  end

end
