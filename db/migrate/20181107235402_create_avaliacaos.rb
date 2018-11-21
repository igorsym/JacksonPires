class CreateAvaliacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :avaliacaos do |t|
      t.integer :estrelas
      t.text :comentario

      t.timestamps
    end
  end
end
