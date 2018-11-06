json.extract! enrollment, :id, :course_code, :email, :created_at, :updated_at
json.url enrollment_url(enrollment, format: :json)
