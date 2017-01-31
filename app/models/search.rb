class Search
  include ActiveModel::Model

  ATTRIBUTES = %i(
    order_by_rate
    order_by_time
    has_report
    has_no_report
    rate_over
    rate_over
    time_over
    time_over
    time_over
    by_ingredient
    has_report_by
  )
  attr_accessor(*ATTRIBUTES)

  def filter
    result = Recipe.all
    result = result.order_by_rate if order_by_rate == "1"
    result = result.order_by_time if order_by_time == "1"
    result
  end
end
