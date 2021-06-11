class SessionController < ApplicationController
  def new
  end

  def login
    user = User.find_by(email: params[:session][:email])
    if  user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to user_path(user)
    else
        render 'new'
    end

  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
