class TopController < ApplicationController
  def home
    @post = Post.all
    @details = PostDetail.all
  end
end
