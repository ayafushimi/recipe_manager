class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :directions
  has_many :reports
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  accepts_nested_attributes_for :recipe_ingredients, :directions

  def average_rate
    if reports.size == 0
      return 0
    else
      sum = 0
      reports.each do |report|
        sum += report.rate
      end
      sum / reports.size
    end
  end

  def self.has_report
    self.where(id: Report.pluck(:recipe_id).uniq)
  end

  def self.has_no_report
    self.where.not(id: Report.pluck(:recipe_id).uniq)
  end

  def self.order_by_rate
    self.joins(:reports).select("'recipes'.'id', 'recipes'.'user_id', 'recipes'.'title', 'recipes'.'time', 'recipes'.'link','reports'.'recipe_id', AVG('reports'.'rate')").group("'reports'.'recipe_id'").order("AVG('reports'.'rate') DESC")
  end

  def self.order_by_rate_include_no_report
    all.sort {|a,b| b.average_rate <=> a.average_rate}
  end

  def self.rate_over(int)
    self.joins(:reports).select("'recipes'.'id', 'recipes'.'user_id', 'recipes'.'title', 'recipes'.'time', 'recipes'.'link','reports'.'recipe_id', AVG('reports'.'rate')").group("'reports'.'recipe_id'").having("AVG('reports'.'rate') >= ?", int)
  end

  def self.by_creator(user)
    self.where(user_id: user.id)
  end

  def self.by_ingredient(ingredient)
    self.where(id: RecipeIngredient.where(ingredient_id: ingredient.id).pluck(:recipe_id).uniq)
  end
end
