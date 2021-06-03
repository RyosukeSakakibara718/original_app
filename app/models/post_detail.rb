class PostDetail < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :purpose_object

  mount_uploader :detail_image, PostDetailImagesUploader

end
