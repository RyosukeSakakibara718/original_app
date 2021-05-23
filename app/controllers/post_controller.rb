class PostController < ApplicationController
  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_second_path
    end

  end

  def second
    @post = Post.find_by(id: params[:id])
  end

  def show
  end

  def edit
  end

  def index
  end

  private

  def post_params
    params.require(:post).permit(:title,:tag_id,:stay,:days,:who,:total_money)
  end



end
