json.array!(@feilds) do |feild|
  json.extract! feild, :id, :feildName
  json.url feild_url(feild, format: :json)
end
