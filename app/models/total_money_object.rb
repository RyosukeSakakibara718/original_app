class TotalMoneyObject < ApplicationRecord
  belongs_to :post,class_name: "Post",foreign_key: "id"
end
