json.extract! student, :id, :name, :email, :company, :course, :level, :telephone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
