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

r11 = RutaParada.create({tipo:1})
r12 = RutaParada.create({tipo:-1})
r11.parada = p1
r11.ruta = r1
r11.save
r12.parada = p2
r12.ruta = r1
r12.save

r21 = RutaParada.create({tipo:1})
r22 = RutaParada.create({tipo:-1})
r21.parada = p3
r21.ruta = r2
r21.save
r22.parada = p4
r22.ruta = r2
r22.save
