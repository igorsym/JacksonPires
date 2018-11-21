class AddPhotoExtensionToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :extension, :string
  end
end
