json.array!(@departments) do |department|
  json.extract! department, :id, :departmentName
  json.url department_url(department, format: :json)
end
