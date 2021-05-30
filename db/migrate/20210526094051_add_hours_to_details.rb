class AddHoursToDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :post_details, :hours_open, :integer
    add_column :post_details, :hours_close, :integer
    
  end
end
