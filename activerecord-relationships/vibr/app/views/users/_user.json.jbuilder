json.extract! user, :id, :name, :email, :clubs, :photo, :dob, :created_at, :updated_at
json.url user_url(user, format: :json)
