class CreatePurposeObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_objects do |t|
      t.integer :purpose_id
      t.string :content

      t.timestamps
    end
  end
end
