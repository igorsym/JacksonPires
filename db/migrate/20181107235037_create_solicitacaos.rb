class CreateSolicitacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :solicitacaos do |t|

      t.timestamps
    end
  end
end
