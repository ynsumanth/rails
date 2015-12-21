json.array!(@students) do |student|
  json.extract! student, :id, :firstName, :middleName, :lastName, :emailId, :mobileNo, :permanentAddress, :mailingAddress, :emergencyContact, :password_digest, :departmentId
  json.url student_url(student, format: :json)
end
