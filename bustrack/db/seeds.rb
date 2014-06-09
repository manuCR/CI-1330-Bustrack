# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

paradas = Parada.create({nombre: 'UCR-Cartago',techo: true, 
                         latitud:9.935521, longitud:-84.050252 })

paradas = Parada.create({nombre: 'UCR-Pavas',techo: true, 
                         latitud:9.934813, longitud:-84.051813 }) 

paradas = Parada.create({nombre: 'UCR-Alajuela',techo: true, 
                         latitud:9.935518, longitud:-84.049777 }) 

paradas = Parada.create({nombre: 'Alajuela-Final',techo: false, 
                         latitud:10.014628, longitud:-84.217198 }) 

paradas = Parada.create({nombre: 'UCR-hatillo',techo: false, 
                         latitud:9.935149, longitud:-84.051142 }) 

paradas = Parada.create({nombre: 'Biblioteca-Hatillo',techo: false, 
                         latitud:9.920974, longitud:-84.103341 }) 

rutas = Ruta.create({nombre: 'UCR-Alajuela', frecuencia: '1 hora',precio: 740,horario: '7-10'})

rutas = Ruta.create({nombre: 'UCR-Hatillo', frecuencia: '30 min',precio: 330,horario: '5:30-22:00'})
