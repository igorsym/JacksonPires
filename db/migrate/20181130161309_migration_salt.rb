class MigrationSalt < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :salt
  end
end
