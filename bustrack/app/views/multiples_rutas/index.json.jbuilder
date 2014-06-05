json.array!(@multiples_rutas) do |multiples_ruta|
  json.extract! multiples_ruta, :id
  json.url multiples_ruta_url(multiples_ruta, format: :json)
end
