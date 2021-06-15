class User < ApplicationRecord
  has_secure_password

  validates :name,{presence: true}
  validates :email,{presence: true, uniqueness: true}

  has_many :post,class_name: "Post"
  has_many :detail,class_name: "PostDetail"
end
