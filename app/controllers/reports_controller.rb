class ReportsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @reports = @recipe.reports
  end

  def new
  end

  def show
  end

  def edit
  end
end
