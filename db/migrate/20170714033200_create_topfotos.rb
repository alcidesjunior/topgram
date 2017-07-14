class CreateTopfotos < ActiveRecord::Migration[5.0]
  def change
    create_table :topfotos do |t|
      t.string :descricao
      t.attachment :foto

      t.timestamps
    end
  end
end
