class Search
  include ActiveModel::Model

  ATTRIBUTES = %i(
    order_by_rate
    order_by_time
    has_report
    rate_over
    rate_under
    time_over
    time_under
    by_creator
    by_ingredient
    has_report_by
  )
  attr_accessor(*ATTRIBUTES)

  def filter
    result = Recipe.all
    if order_by_rate == "1" && has_report == "0"
      $no_repo = result.has_no_report
    end
    result = result.order_by_rate if order_by_rate == "1"
    result = result.order_by_time if order_by_time == "1"
    result = result.has_report if has_report == "1"
    result
  end
end
