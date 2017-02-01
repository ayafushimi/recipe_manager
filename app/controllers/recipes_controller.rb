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
    # raise
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
    Recipe.find(params[:id]).destroy
    flash[:success] = "Deleted recipe."
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :user_id,
      recipe_ingredients_attributes: [
        :id,
        :quantity,
        :unit,
        ingredient_attributes: [:id, :title]
      ],
      directions_attributes: [:id, :text]
    )
  end

  def search_params
    params.require(:search).permit(
      :order_by_rate,
      :order_by_time,
      :has_report,
      :rate_over,
      :rate_under,
      :time_over,
      :time_under,
      :by_creator,
      :by_ingredient,
      :has_report_by
    )
  end
end
