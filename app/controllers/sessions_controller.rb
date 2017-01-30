class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(
      username: user_params[:username],
      email: user_params[:email])
    if @user.try(:authenticate, user_params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Successfully signed in."
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = "Signed out."
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user)
  end
end
