class ChangeWhoToWhos < ActiveRecord::Migration[5.2]
  def change
    rename_table :whos, :whos_object
  end
end
