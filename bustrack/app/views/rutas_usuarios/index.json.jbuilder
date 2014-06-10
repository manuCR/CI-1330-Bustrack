json.array!(@rutas_usuarios) do |rutas_usuario|
  json.extract! rutas_usuario, :id
  json.url rutas_usuario_url(rutas_usuario, format: :json)
end
