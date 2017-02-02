class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @input = session_params[:email]
    user = User.find_by(email: @input)
    if user.try(:authenticate, session_params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully signed in."
      redirect_back_or(user_path(user))
    else
      flash.now[:danger] = "Invalid email/password combination."
      render :new
    end
  end

  def oauth
    auth = request.env["omniauth.auth"]
    @user = User.find_or_create_by(uid:auth[:uid]) do |u|
      u.username = auth[:info][:name]
      u.email = auth[:info][:email]
    end
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Successfully signed up."
      redirect_back_or(user_path(@user))
    else
      flash.now[:danger] = @user.errors.full_messages_for(:email).join(" / ")
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = "Signed out."
    redirect_to root_url
  end

  private

  def session_params
    params.require(:session)
  end
end
