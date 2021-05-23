class SessionController < ApplicationController
  def new
  end

  def login
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Invalid email/password combination' # 本当は正しくない
      render :new
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
