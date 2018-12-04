class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.boolean :is_host
      t.references :event, index: true, foreing_key: true
      t.references :user,  index: true, foreing_key: true
      t.timestamps
    end
  end
end
