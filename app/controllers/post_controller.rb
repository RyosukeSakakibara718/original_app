class PostController < ApplicationController
  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
    @post.user_id = session[:user_id]
    if @post.save
      redirect_to post_path(id: @post.id)
    else
      render :new
    end

  end

  def second
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    object_find @post
    @post_detail = PostDetail.new

    @made_post_detail = PostDetail.where(post_id: @post.id)
  end

  def create_detail
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @post_detail = PostDetail.new(post_detail_params) 
    @post_detail.post_id = @post.id 
    @post_detail.user_id = @post.user_id
  if @post_detail.save
    redirect_to post_path(id: @post.id)
  else
    render :new
  end
  if params[:confirm]
    redirect_to post_confirm_path(id: @post.id)
  end
  end

  def post_confirm
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @post_detail = PostDetail.find_by(post_id: @post.id)
    object_find @post
    @made_post_detail = PostDetail.where(post_id: @post.id)
  end

  def edit
  end

  def index
  end

  private

  def post_params
    params.require(:post).permit(:title,:tag_id,:stay,:days,:who,:total_money)
  end

  def post_detail_params
    params.require(:post_detail).permit(:name,:place,:purpose,:url,:hours_open,:hours_close,:comment)
  end

end
