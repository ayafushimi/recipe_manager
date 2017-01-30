module UsersHelper
  def need_login
    unless logged_in?
      flash[:danger] = "Please sign in to access that page."
      redirect_to signin_path
    end
  end
end
