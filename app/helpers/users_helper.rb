module UsersHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if(@user.id == session[:user_id])
      @current_user = @user
    end
  end


end
