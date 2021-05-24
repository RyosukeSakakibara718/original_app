class PostController < ApplicationController
  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
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
    @who_object = WhosOject.find_by(who_id: @post.who)
    @stay_object = StayObject.find_by(stay_id: @post.stay)
    @days_object = DaysObject.find_by(days_id: @post.days)
    @total_money_object = TotalMoneyObject.find_by(total_money_id: @post.total_money)
    @stay_all = StayObject.all
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
