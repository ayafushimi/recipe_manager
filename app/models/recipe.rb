class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :directions
  has_many :reports
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  accepts_nested_attributes_for :recipe_ingredients, :directions

  def average_rate
    if reports.size == 0
      return "there is no report"
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

  def self.order_by_rate

  end
end
