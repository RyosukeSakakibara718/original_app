class CreateTotalMoneyObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :total_money_objects do |t|
      t.integer :total_money_id
      t.string :content

      t.timestamps
    end
  end
end
