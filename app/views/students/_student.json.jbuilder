json.extract! student, :id, :name, :password, :email, :pojectname, :year_of_study, :instructorname, :created_at, :updated_at
json.url student_url(student, format: :json)
