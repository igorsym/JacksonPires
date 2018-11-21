class CreateConvites < ActiveRecord::Migration[5.2]
  def change
    create_table :convites do |t|

      t.timestamps
    end
  end
end
