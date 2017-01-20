class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.recipe_ingredients.build.build_ingredient
    @recipe.recipe_ingredients.build.build_ingredient
    @recipe.recipe_ingredients.build.build_ingredient
    @recipe.recipe_ingredients.build.build_ingredient
    @recipe.recipe_ingredients.build.build_ingredient
    @recipe.recipe_ingredients.build.build_ingredient
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end
end
