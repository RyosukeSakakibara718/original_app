class Post < ApplicationRecord
  has_many :detail,class_name: "PostDetail"
  has_many :stay, class_name: "StayObject"
  has_many :days, class_name: "DaysObject"
  has_many :who, class_name: "WhoObject"
  has_many :total, class_name: "TotalMoneysObject"
  belongs_to :user,class_name:"User",foreign_key: "user_id"
end
