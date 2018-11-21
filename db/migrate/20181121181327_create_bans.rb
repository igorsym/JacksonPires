class CreateBans < ActiveRecord::Migration[5.2]
  def change
    create_table :bans do |t|
      t.boolean :forever
      t.date :end_date

      t.timestamps
    end
  end
end
