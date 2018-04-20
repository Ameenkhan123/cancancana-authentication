json.extract! doctor, :id, :fname, :lname, :email, :contact, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
