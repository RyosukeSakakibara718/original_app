class Post < ApplicationRecord


  has_many :post_detail

  belongs_to :user
end
