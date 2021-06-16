class CreatePostDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :post_details do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :purpose
      t.string :name
      t.string :place
      t.text :url
      t.string :comment
      t.time :hours_open
      t.time :hours_close
      t.string :detail_image
      t.integer :cost

      t.timestamps
    end
  end
end
