class User < ApplicationRecord
  has_secure_password

  validates :name,{presence: true}
  validates :email,{presence: true, uniqueness: true}

  has_many :post
  has_many :post_detail
end
