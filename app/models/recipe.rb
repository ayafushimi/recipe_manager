class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :directions
  has_many :reports
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  accepts_nested_attributes_for :recipe_ingredients, :directions
  before_save :erase_empty_directions, :erase_empty_ingredients, :erase_empty_recipe_ingredients
  before_destroy :delete_children

  def erase_empty_recipe_ingredients
    self.recipe_ingredients = self.recipe_ingredients.select {|ri| ri.ingredient.title != ''}
  end

  def erase_empty_ingredients
    self.ingredients = self.ingredients.select {|i| i.title != ''}
  end

  def erase_empty_directions
    self.directions = self.directions.select {|d| d.text != ''}
  end

  def delete_children
    self.directions.each {|d| d.destroy}
    self.recipe_ingredients.each {|ri| ri.destroy}
    self.reports.each {|report| report.destroy}
  end

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

  def self.order_by_rate
    self.joins(:reports).select("'recipes'.'id', 'recipes'.'user_id', 'recipes'.'title', 'recipes'.'time', 'recipes'.'link','reports'.'recipe_id', AVG('reports'.'rate')").group("'reports'.'recipe_id'").order("AVG('reports'.'rate') DESC")
  end

  def self.order_by_rate_include_no_report
    all.sort {|a,b| b.average_rate <=> a.average_rate}
  end

  def self.order_by_time
    self.order(:time)
  end

  def self.has_report
    self.where(id: Report.pluck(:recipe_id).uniq)
  end

  def self.has_no_report
    self.where.not(id: Report.pluck(:recipe_id).uniq)
  end

  def self.rate_over(int)
    self.joins(:reports).select("'recipes'.'id', 'recipes'.'user_id', 'recipes'.'title', 'recipes'.'time', 'recipes'.'link','reports'.'recipe_id', AVG('reports'.'rate')").group("'reports'.'recipe_id'").having("AVG('reports'.'rate') >= ?", int)
  end

  def self.rate_under(int)
    self.joins(:reports).select("'recipes'.'id', 'recipes'.'user_id', 'recipes'.'title', 'recipes'.'time', 'recipes'.'link','reports'.'recipe_id', AVG('reports'.'rate')").group("'reports'.'recipe_id'").having("AVG('reports'.'rate') <= ?", int)
  end

  def self.time_over(int)
    self.where("time >= ?", int)
  end

  def self.time_under(int)
    self.where("time <= ?", int)
  end

  def self.by_creator(user)
    self.where(user_id: user.id)
  end

  def self.by_ingredient(ingredient)
    self.where(id: RecipeIngredient.where(ingredient_id: ingredient.id).pluck(:recipe_id).uniq)
  end

  def self.has_report_by(user)
    self.joins(:reports).where("'reports'.'user_id' = ?", user.id)
  end
end
