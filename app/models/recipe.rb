class Recipe < ApplicationRecord
  include ActiveRecord::UnionScope

  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :directions
  has_many :reports
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  validates :title, presence: true

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

  scope :with_report, -> { joins(:reports) }
  scope :select_all, -> { select("'recipes'.'id', 'recipes'.'user_id', 'recipes'.'title', 'recipes'.'time', 'recipes'.'link','reports'.'recipe_id', AVG('reports'.'rate')") }
  scope :group_by_rate, -> { group("'reports'.'recipe_id'") }
  scope :order_desc, -> { order("AVG('reports'.'rate') DESC") }
  # scope :order_by_rate_scope, -> { with_report.select_all.group_by_rate.order_desc }
  # scope :has_no_report_scope, -> { where.not(id: Report.pluck(:recipe_id).uniq) }
  # scope :order_by_rate_include_no_report_scope, -> { union_scope(order_by_rate_scope, has_no_report_scope) }

  def self.order_by_rate
    self.with_report.select_all.group_by_rate.order_desc
  end

  # def self.order_by_rate_include_no_report
  #   self.order_by_rate_include_no_report_scope
  # end

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
    self.with_report.select_all.group_by_rate.having("AVG('reports'.'rate') >= ?", int)
  end

  def self.rate_under(int)
    self.with_report.select_all.group_by_rate.having("AVG('reports'.'rate') <= ?", int)
  end

  def self.time_over(int)
    self.where("time >= ?", int)
  end

  def self.time_under(int)
    self.where("time <= ?", int)
  end

  def self.by_creator(user_id)
    self.where(user_id: user_id)
  end

  def self.by_ingredient(ingredient_id)
    self.where(id: RecipeIngredient.where(ingredient_id: ingredient_id).pluck(:recipe_id).uniq)
  end

  def self.has_report_by(user)
    self.with_report.where("'reports'.'user_id' = ?", user.id)
  end
end
