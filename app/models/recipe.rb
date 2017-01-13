class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :directions
  has_many :reports
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  accepts_nested_attributes_for :recipe_ingredients, :ingredients, :directions
end
