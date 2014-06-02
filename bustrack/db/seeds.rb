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

rutas = Ruta.create({nombre: 'UCR-Alajuela',precio: 740,inicio_lat: 9.935518,
                    inicio_long: -84.049777, fin_lat: 10.014628,
                    fin_long: -84.217198,horario: '7-10', frecuencia: '1 hora'})
