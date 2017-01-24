class RecipeIngredient < ApplicationRecord
  belongs_to :recipe, optional: true
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient

  def ingredient_attributes=(attributes)
    self.ingredient = Ingredient.find_or_create_by(title: attributes["title"].downcase)
  end
end
