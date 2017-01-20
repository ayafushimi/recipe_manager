class RecipesController < ApplicationController
  def index
    @recipes = Recipes.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
