class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Successfully signed up."
      redirect_back_or(user_path(@user))
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @recipes = @user.recipes
    @reports = @user.reports
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Successfully updated."
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    User.find(params[:id]).destroy
    session.delete(:user_id)
    flash[:success] = "Deleted user."
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:id, :username,:email,:password)
  end
end
