json.array!(@administradors) do |administrador|
  json.extract! administrador, :id, :usuario, :nombre, :contrasena, :habilitado
  json.url administrador_url(administrador, format: :json)
end
