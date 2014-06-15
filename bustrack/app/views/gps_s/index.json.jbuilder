json.array!(@gps_s) do |gps|
  json.extract! gps, :id, :id_gps, :ultima_latitud, :ultima_logitud
  json.url gps_url(gps, format: :json)
end
