json.array!(@laboratorios) do |laboratorio|
  json.extract! laboratorio, :id, :nombre, :razon_social, :direccion, :departamento, :telefono, :web
  json.url laboratorio_url(laboratorio, format: :json)
end
