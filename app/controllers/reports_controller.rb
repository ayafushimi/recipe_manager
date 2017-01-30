class ReportsController < ApplicationController
  before_action :need_login, except: [:index, :show]
  before_action :only_owner, only: [:edit, :update, :destroy]

  def index
    @recipe = Recipe.find(params[:recipe_id])
    @reports = @recipe.reports
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @report = @recipe.reports.build
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @report = @recipe.reports.build(report_params)
    if @report.save
      flash[:success] = "Added new report."
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    @report =  Report.find(params[:id])
  end

  def update
    @report =  Report.find(params[:id])
    if @report.update(report_params)
      flash[:success] = "Updated report."
      redirect_to recipe_path(@report.recipe)
    else
      render :edit
    end
  end

  def destroy
    report =  Report.find(params[:id])
    recipe = report.recipe
    report.destroy
    flash[:success] = "Deleted report."
    redirect_to recipe_path(recipe)
  end

  private

  def report_params
    params.require(:report).permit(:id, :rate, :comment, :user_id)
  end

  def only_owner
    report = Report.find(params[:id])
    unless logged_in? && report.user_id == session[:user_id]
      flash[:danger] = "That page is only for owners."
      redirect_back(fallback_location: recipe_path(report.recipe))
    end
  end

end
