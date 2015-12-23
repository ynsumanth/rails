json.array!(@courses) do |course|
  json.extract! course, :id, :courseDescription, :feildId
  json.url course_url(course, format: :json)
end
