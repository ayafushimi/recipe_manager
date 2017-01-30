module SessionsHelper
  def logged_in?
    !!session[:user_id]
  end

  def current_user
    User.find(session[:user_id])
  end

  def need_login
    unless logged_in?
      flash[:danger] = "Please sign in to access that page."
      redirect_to signin_path
    end
  end

end
