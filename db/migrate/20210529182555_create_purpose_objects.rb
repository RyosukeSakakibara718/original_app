class CreatePurposeObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :purpose_objects do |t|
      t.string :content
      t.string :detail_id

      t.timestamps
    end
  end
end
