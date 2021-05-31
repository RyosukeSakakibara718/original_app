class RenameUserIamgeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_iamge, :user_image
  end
end
