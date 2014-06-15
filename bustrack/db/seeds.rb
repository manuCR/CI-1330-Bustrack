# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Parada.create({nombre: 'UCR-Cartago',techo: true, latitud:9.935521, longitud:-84.050252 })

Parada.create({nombre: 'UCR-Pavas',techo: true, latitud:9.934813, longitud:-84.051813 }) 

p1 = Parada.create({nombre: 'UCR-Alajuela',techo: true, latitud:9.935518, longitud:-84.049777 }) 

p2 = Parada.create({nombre: 'Alajuela-Final',techo: false, latitud:10.014628, longitud:-84.217198 }) 

p3 = Parada.create({nombre: 'UCR-hatillo',techo: false, latitud:9.935149, longitud:-84.051142 }) 

p4 = Parada.create({nombre: 'Biblioteca-Hatillo',techo: false, latitud:9.920974, longitud:-84.103341 }) 

r1 = Ruta.create({nombre: 'UCR-Alajuela', frecuencia: '1 hora',precio: 740,horario: '7-10'})

r2 = Ruta.create({nombre: 'UCR-Hatillo', frecuencia: '30 min',precio: 330,horario: '5:30-22:00'})

#agrega relacion entre UCR-Alajuela y las paradas UCR-Alajuela Alajuela-Final
rp11 = RutaParada.create({tipo:1})
rp12 = RutaParada.create({tipo:-1})
rp11.parada = p1
rp11.ruta = r1
rp11.save
rp12.parada = p2
rp12.ruta = r1
rp12.save

#agrega relacion entre UCR-hatillo y las paradas UCR-hatillo Biblioteca-Hatillo
rp21 = RutaParada.create({tipo:1})
rp22 = RutaParada.create({tipo:-1})
rp21.parada = p3
rp21.ruta = r2
rp21.save
rp22.parada = p4
rp22.ruta = r2
rp22.save

#Crea dos buses y agrega cada uno a cada ruta

b1 = Bus.create({placa: 'AB-201'})
b2 = Bus.create({placa: 'SJB-202'})
g1 = Gps.create({id_gps: '3a1bb1eb-be18-41db-9a2b-562506c86fef'})
g2 = Gps.create({id_gps: 'cceed289-d438-41ed-a7e5-5e52c61ef1d0'})
b1.gps = g1
b2.gps = g2
r1.bus.push(b1)
r2.bus.push(b2)
r1.save
r2.save
