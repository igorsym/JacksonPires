class CreateParticipacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :participacaos do |t|
      t.boolean :is_host

      t.timestamps
    end
  end
end
