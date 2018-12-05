class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
    	
      t.integer :event_id
      t.integer :rater_id
      t.integer :rated_id
      t.string :token

      t.integer :stars
      t.text :comment
      t.timestamps
    end
  end
end
