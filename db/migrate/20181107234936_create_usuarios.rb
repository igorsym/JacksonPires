class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :apelido
      t.string :email
      t.string :celular
      t.date :nascimento
      t.string :sexo
      t.string :senha
      t.integer :sal

      t.timestamps
    end
  end
end
