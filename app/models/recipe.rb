class Recipe < ApplicationRecord
  has many :recipe_ingredients
  has many :ingredients, through: :recipe_ingredients
  has many :directions
  has many :reports
  belongs_to :creator, class_name: "User"
end
