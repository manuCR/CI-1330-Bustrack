json.array!(@rutas) do |ruta|
  json.extract! ruta, :id, :nombre, :frecuencia, :precio, :horario
  json.url ruta_url(ruta, format: :json)
end
