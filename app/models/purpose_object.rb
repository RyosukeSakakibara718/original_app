class PurposeObject < ApplicationRecord
  belongs_to :detail, class_name: "PostDeatil",foreign_key: "detail_id"
end
