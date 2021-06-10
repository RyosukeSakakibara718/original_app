class CreateWhoObject < ActiveRecord::Migration[5.2]
  def change
    create_table :who_object do |t|
      t.string :content

      t.timestamps
    end
  end
end
