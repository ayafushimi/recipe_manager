class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  validates :title, uniqueness: { case_sensitive: false }

  def self.has_recipe
    self.joins(:recipe_ingredients).merge(RecipeIngredient.where.not(recipe_id: nil)).distinct
  end
end
