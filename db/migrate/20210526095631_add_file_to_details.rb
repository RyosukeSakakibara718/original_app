class AddFileToDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :post_details, :detail_image, :string
  end
end
