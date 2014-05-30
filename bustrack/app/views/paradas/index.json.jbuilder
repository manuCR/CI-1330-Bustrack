json.array!(@paradas) do |parada|
  json.extract! parada, :id, :nombre, :techo, :latitid, :longuitud
  json.url parada_url(parada, format: :json)
end
