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

  def only_owner
    recipe = Recipe.find(params[:id])
    unless logged_in? && recipe.user_id == session[:user_id]
      flash[:danger] = "That page is only for owners."
      redirect_back(fallback_location: root_path)
    end
  end
end
