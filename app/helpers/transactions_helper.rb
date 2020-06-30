module TransactionsHelper
  def total_amount_with_group
    Transaction.with_group.sum(:amount)
  end

  def total_amount_without_group
    Transaction.without_group.sum(:amount)
  end

  def upcoming_events_list(events)
    content_tag :ul do
      events.upcoming.map do |line|
        concat(
          content_tag(:li, (link_to line.name, event_path(line.id)))
        )
      end
    end
  end
end
