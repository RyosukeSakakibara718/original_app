class PostDetail < ApplicationRecord
  belongs_to :post, class_name: "Post",foreign_key:"post_id"
  belongs_to :user,class_name: "User",foreign_key:"user_id"
  has_many :purpose, class_name: "PurposeObject"

  mount_uploader :detail_image, PostDetailImagesUploader

end
