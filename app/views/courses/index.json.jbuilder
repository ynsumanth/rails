json.array!(@courses) do |course|
  json.extract! course, :id, :courseId, :courseDescription, :fieldId
  json.url course_url(course, format: :json)
end
