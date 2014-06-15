json.array!(@buses) do |bus|
  json.extract! bus, :id, :placa
  json.url bus_url(bus, format: :json)
end
