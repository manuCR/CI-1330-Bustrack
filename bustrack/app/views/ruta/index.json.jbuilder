json.array!(@ruta) do |rutas|
  json.extract! rutas, :id, :nombre, :Inicio_Latitud, :Inicio_Longuitud, :Fin_Latitud, :Fin_Longuitud, :Frecuencia, :Precio, :Horario
  json.url rutas_url(rutas, format: :json)
end
