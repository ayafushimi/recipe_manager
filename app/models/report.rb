class Report < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  validates :rate, inclusion: { in: 1..5 }
end
