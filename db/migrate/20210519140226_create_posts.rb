class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.integer :tag_id
      t.integer :stay
      t.integer :days
      t.string :who
      t.integer :total_money

      t.timestamps
    end
  end
end
