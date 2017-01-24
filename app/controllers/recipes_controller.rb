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
    @recipe.directions.build
    @recipe.directions.build
    @recipe.directions.build
    @recipe.directions.build
    @recipe.directions.build
    @recipe.directions.build
  end

  def create
    recipe = Recipe.create(recipe_params)
    if recipe.save
      redirect_to recipe_path(recipe)
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :user_id,
      recipe_ingredients_attributes: [
        :quantity,
        :unit,
        ingredient_attributes: [:title]
      ],
      directions_attributes: [:text]
    )
  end
end
