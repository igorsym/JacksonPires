class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.text :reason
      t.integer :event_id
      t.integer :reporter_id
      t.integer :reportee_id
      t.integer :moderator_id
      t.timestamps
    end
  end
end
