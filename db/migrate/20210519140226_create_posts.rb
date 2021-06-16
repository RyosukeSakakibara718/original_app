class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.integer :tag_id
      t.string :stay
      t.string :days
      t.string :who

      t.timestamps
    end
  end
end
