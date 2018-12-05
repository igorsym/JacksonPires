class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :email
      t.integer :event_id
      t.integer :sender_id
      t.string :token
      t.timestamps
    end
  end
end
