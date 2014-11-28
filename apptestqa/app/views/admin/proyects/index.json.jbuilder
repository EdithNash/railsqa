json.array!(@proyects) do |proyect|
  json.extract! proyect, :id, :name, :version
  json.url proyect_url(proyect, format: :json)
end
