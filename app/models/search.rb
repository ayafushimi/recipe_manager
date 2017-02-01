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
    result = result.time_over(time_over.to_i) if time_over.present?
    result = result.time_under(time_under.to_i) if time_under.present?
    result = result.by_creator(by_creator.to_i) if by_creator.present?
    if (order_by_rate == "1" && has_report == "0" && !rate_over.present?) || (rate_under.present? && has_report == "0")
      $no_repo = result.has_no_report
    end
    result = result.order_by_rate if order_by_rate == "1"
    result = result.order_by_time if order_by_time == "1"
    result = result.has_report if has_report == "1"
    result = result.rate_over(rate_over.to_i) if rate_over.present?
    result = result.rate_under(rate_under.to_i) if rate_under.present?
    result
  end
end
