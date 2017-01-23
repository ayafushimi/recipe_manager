class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(
      username: session_params[:username],
      email: session_params[:email]
    ).try(:authenticate, session_params[:password])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_url
  end

  private

  def session_params
    params.require(:session)
  end
end
