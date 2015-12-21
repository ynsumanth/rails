json.array!(@feilds) do |feild|
  json.extract! feild, :id, :feildId, :feildName
  json.url feild_url(feild, format: :json)
end
