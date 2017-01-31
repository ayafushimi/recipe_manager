module SessionsHelper
  def logged_in?
    !!session[:user_id]
  end

  def current_user
    User.find(session[:user_id])
  end

  def need_login
    unless logged_in?
      store_path
      flash[:danger] = "Please sign in to access that page."
      redirect_to signin_path
    end
  end

  def store_path
    session[:forwarding_path] = request.fullpath if request.get?
  end

  def redirect_back_or(default)
    redirect_to(session[:forwarding_path] || default)
    session.delete(:forwarding_path)
  end
end
