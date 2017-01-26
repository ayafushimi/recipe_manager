class ReportsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @reports = @recipe.reports
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @report = @recipe.reports.build
  end

  def edit
  end
end
