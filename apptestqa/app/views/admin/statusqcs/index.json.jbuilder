json.array!(@statusqcs) do |statusqc|
  json.extract! statusqc, :id, :description
  json.url statusqc_url(statusqc, format: :json)
end
