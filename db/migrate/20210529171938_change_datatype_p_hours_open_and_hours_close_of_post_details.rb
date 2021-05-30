class ChangeDatatypePHoursOpenAndHoursCloseOfPostDetails < ActiveRecord::Migration[5.2]
  def change
    change_column :post_details, :hours_open, :time
    change_column :post_details, :hours_close, :time
  end
end
