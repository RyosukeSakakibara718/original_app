class ChangeWhosObjectToWhosObjectes < ActiveRecord::Migration[5.2]
  def change
    rename_table :Whos_object, :whos_objects
  end
end
