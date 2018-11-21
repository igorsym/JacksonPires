json.extract! usuario, :id, :name, :apelido, :email, :celular, :nascimento, :sexo, :senha, :sal, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
