json.extract! moderador, :id, :nome, :email, :senha, :sal, :created_at, :updated_at
json.url moderador_url(moderador, format: :json)
