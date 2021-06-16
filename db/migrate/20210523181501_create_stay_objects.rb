class CreateStayObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :stay_objects do |t|
      t.integer :post_id
      t.string :content

      t.timestamps
    end
  end
end
