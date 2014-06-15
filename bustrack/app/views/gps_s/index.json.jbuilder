json.array!(@gps_s) do |gps|
  json.extract! gps, :id, :id_gps
  json.url gps_url(gps, format: :json)
end
