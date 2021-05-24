class ChangeDatetypeWhoOfPost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :who, :integer
  end
end
