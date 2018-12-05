class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.references :event, index: true, foreing_key: true
      t.references :user, index: true, foreing_key: true
      t.timestamps
    end
  end
end
