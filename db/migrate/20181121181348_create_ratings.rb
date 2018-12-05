class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.text :comment
      t.references :event, index: true, foreing_key: true
      t.references :user,  index: true, foreing_key: true
      t.timestamps
    end
  end
end
