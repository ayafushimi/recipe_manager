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
end
