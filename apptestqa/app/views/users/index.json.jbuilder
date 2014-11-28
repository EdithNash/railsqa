json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :apellido1, :apellido2, :telefono, :email, :contrasena
  json.url user_url(user, format: :json)
end
