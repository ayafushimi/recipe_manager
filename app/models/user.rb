class User < ApplicationRecord
  has_many :reports
  has_many :recipes
  has_secure_password

  validates :username, :email, presence: true, uniqueness: true
  validates :password, length: {in: 6..30}

  before_destroy :delete_children

  def delete_children
    self.recipes.each {|recipe| recipe.destroy}
    self.reports.each {|report| report.destroy}
  end

  def self.only_creator
    self.where(id: Recipe.pluck(:user_id).uniq)
  end

  def self.has_report
    self.where(id: Report.pluck(:user_id).uniq)
  end
end
