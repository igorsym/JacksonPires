class CreateModeradors < ActiveRecord::Migration[5.2]
  def change
    create_table :moderadors do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.integer :sal

      t.timestamps
    end
  end
end
