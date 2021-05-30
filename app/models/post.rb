class Post < ApplicationRecord
  has_many :Whos_object
  has_many :stay_object
  has_many :days_object
  has_many :total_money_object

  has_many :post_detail

  belongs_to :user
end
