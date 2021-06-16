class PostDetail < ApplicationRecord
  
  belongs_to :post, class_name:"Post", foreign_key: "post_id"

  mount_uploader :detail_image, PostDetailImagesUploader

end
