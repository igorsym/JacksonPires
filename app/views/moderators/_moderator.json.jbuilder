json.extract! moderator, :id, :name, :email, :password, :salt, :created_at, :updated_at
json.url moderator_url(moderator, format: :json)
