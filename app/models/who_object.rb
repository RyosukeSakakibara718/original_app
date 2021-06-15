class WhoObject < ApplicationRecord
  belongs_to :post,class_name: "Post",foreign_key: "id"
end
