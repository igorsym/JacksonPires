json.extract! evento, :id, :nome, :modalidade, :data, :horario_inicio, :horario_termino, :periodicidade, :local, :descricao, :convite, :created_at, :updated_at
json.url evento_url(evento, format: :json)
