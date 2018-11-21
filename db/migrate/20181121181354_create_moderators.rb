class CreateModerators < ActiveRecord::Migration[5.2]
  def change
    create_table :moderators do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :salt

      t.timestamps
    end
  end
end
