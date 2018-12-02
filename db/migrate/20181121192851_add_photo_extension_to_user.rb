class AddPhotoExtensionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :extension, :string
  end
end
