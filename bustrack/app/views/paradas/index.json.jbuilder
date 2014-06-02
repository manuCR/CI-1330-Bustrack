json.array!(@paradas) do |parada|
  json.extract! parada, :id, :nombre, :techo, :latitud, :longitud
  json.url parada_url(parada, format: :json)
end
