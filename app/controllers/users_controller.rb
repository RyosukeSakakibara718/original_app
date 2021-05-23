class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user_iamge = "0.jpg"
    if @user.save
      redirect_to @user
      log_in @user
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  def index
  end


  private

  def user_params
    params.require(:user).permit(:name,:account_name,:email,:password,:password_confirmation)
  end
end
