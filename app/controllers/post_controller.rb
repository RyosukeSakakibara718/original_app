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
    render :show
  end
  end

  def post_confirm
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @post_detail = PostDetail.find_by(post_id: @post.id)
    object_find @post
    @made_post_detail = PostDetail.where(post_id: @post.id)
  end

  def detail_edit
    @post_detail = PostDetail.find(params[:id])
  end

  def detail_update
    @post_detail = PostDetail.find(params[:id])
    @post_detail.name = params[:name]
    @post_detail.place = params[:place]
    @post_detail.purpose = params[:purpose]
    @post_detail.url = params[:url]
    @post_detail.hours_open = params[:hours_open]
    @post_detail.hours_close = params[:hours_close]
    @post_detail.comment = params[:comment]
    @post_detail.detail_image = params[:detail_image]
    if @post_detail.save
      redirect_to post_confirm_path(id: @post_detail.post_id)
    end
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
    params.require(:post_detail).permit(:name,:place,:purpose,:url,:hours_open,:hours_close,:comment,:detail_image)
  end

end
