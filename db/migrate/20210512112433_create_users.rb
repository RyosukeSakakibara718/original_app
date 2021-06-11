class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :account_name
      t.string :user_image
      t.string :comment

      t.timestamps
    end
  end
end
