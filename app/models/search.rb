class Search < ApplicationRecord
  def self.filter
    result = Recipe.all
    result = result.order_by_time
    result
  end
end
