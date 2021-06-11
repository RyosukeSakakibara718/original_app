class PostDetail < ApplicationRecord
  belongs_to :post
  belongs_to :user


  mount_uploader :detail_image, PostDetailImagesUploader

end
