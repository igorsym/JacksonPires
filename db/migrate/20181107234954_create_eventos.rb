class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :modalidade
      t.date :data
      t.time :horario_inicio
      t.time :horario_termino
      t.string :periodicidade
      t.string :local
      t.text :descricao
      t.boolean :convite

      t.timestamps
    end
  end
end
