json.array!(@mapas) do |mapa|
  json.extract! mapa, :id
  json.url mapa_url(mapa, format: :json)
end
