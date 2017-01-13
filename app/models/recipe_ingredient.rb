class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient

  def ingredient_attributes=(attributes)
    self.ingredient = Ingredient.find_or_create_by(attributes)
  end
end
