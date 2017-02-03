class RecipesController < ApplicationController
  before_action :need_login, except: [:index, :show, :search]
  before_action :only_owner, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.all
    @search = Search.new
  end

  def search
    @search = Search.new(search_params)
    @recipes = @search.filter
    @no_repo = $no_repo
    $no_repo = nil
    render :index
  end

  def new
    @recipe = Recipe.new
    6.times {
      @recipe.recipe_ingredients.build.build_ingredient
      @recipe.directions.build
    }
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      flash[:success] = "Added new recipe."
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    6.times {
      @recipe.recipe_ingredients.build.build_ingredient
      @recipe.directions.build
    }
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      flash[:success] = "Updated recipe."
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    user = recipe.creator
    recipe.destroy
    flash[:success] = "Deleted recipe."
    redirect_to user_path(user)
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :time,
      :user_id,
      recipe_ingredients_attributes: [
        :id,
        :quantity,
        ingredient_attributes: [:id, :title]
      ],
      directions_attributes: [:id, :text]
    )
  end

  def search_params
    params.require(:search).permit(
      :order_by,
      :has_report,
      :rate_over,
      :time_over,
      :time_under,
      :by_creator,
      :by_ingredient,
      :has_report_by
    )
  end
end
