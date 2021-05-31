class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user_image = "0.jpg"
    if @user.save
      redirect_to @user
      log_in @user

    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    @user.name= params[:name]
    @user.account_name= params[:account_name]
    @user.email= params[:email]
    @user.comment= params[:comment]
    @user.name= params[:name]
    if params[:user_image]
      @user.user_image = "#{@user.id}.jpg"
      FIle.binwrite("public/user_iamges/#{@user.user_image}",image.read)
    end
    if @user.save
      redirect_to @user
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(session[:user_id])
    current_user
  end

  def index
  end


  private

  def user_params
    params.require(:user).permit(:name,:account_name,:email,:comment,:password,:password_confirmation)
  end
end
