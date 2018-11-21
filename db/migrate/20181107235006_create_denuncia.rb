class CreateDenuncia < ActiveRecord::Migration[5.2]
  def change
    create_table :denuncia do |t|
      t.text :motivo

      t.timestamps
    end
  end
end
