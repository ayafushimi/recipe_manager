class ReportsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @reports = @recipe.reports
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @report = @recipe.reports.build
  end

  def create
    recipe = Recipe.find(params[:recipe_id])
    report = recipe.reports.build(report_params)
    if report.save
      redirect_to recipe_path(recipe)
    else
      render :new
    end
  end

  def edit
    @report =  Report.find(params[:id])
  end

  private

  def report_params
    params.require(:report).permit(:id, :rate, :comment, :user_id)
  end
end
