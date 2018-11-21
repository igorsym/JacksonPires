class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :sport
      t.date :event_date
      t.time :start_time
      t.time :end_time
      t.string :frequency
      t.string :place
      t.text :description
      t.boolean :all_can_invite

      t.timestamps
    end
  end
end
