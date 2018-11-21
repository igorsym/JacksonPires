class CreateBanidos < ActiveRecord::Migration[5.2]
  def change
    create_table :banidos do |t|
      t.boolean :permanente
      t.date :termino

      t.timestamps
    end
  end
end
