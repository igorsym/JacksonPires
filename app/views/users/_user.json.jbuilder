json.extract! user, :id, :name, :username, :email, :phone, :birth_date, :gender, :password, :salt, :created_at, :updated_at
json.url user_url(user, format: :json)
