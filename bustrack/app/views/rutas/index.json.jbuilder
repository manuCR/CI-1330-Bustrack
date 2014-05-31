json.array!(@rutas) do |ruta|
  json.extract! ruta, :id, :nombre, :precio, :inicio_lat, :inicio_long, :fin_lat, :fin_long, :horario, :frecuencia
  json.url ruta_url(ruta, format: :json)
end
