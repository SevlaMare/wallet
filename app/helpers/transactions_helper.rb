module TransactionsHelper
  def total_amount_with_group
    Transaction.with_group.sum(:amount)
  end

  def total_amount_without_group
    Transaction.without_group.sum(:amount)
  end

  def transactions_list(query)
    content_tag(:div, class: 'list') do
      query.map do |line|
        concat(
          content_tag(:div, class: 'list-item') do
            concat(
              content_tag(:p, (link_to image_tag(line.group.icon, class: 'icon float'),
                                       group_path(line.group.id), class: 'dark-text'))
            )
            concat(
              content_tag(:div, class: 'flex space-between') do
                content_tag(:p, (link_to line.name, group_path(line.group.id), class: 'dark-text')) +
                content_tag(:p, "$#{number_with_precision(line.amount, precision: 2)}",
                            class: 'dark-text')
              end
            )
            concat(
              tag(:hr) +
              content_tag(:p, line.created_at.strftime('%d %b %Y'), class: 'dark-text') +
              tag(:br)
            )
          end
        )
      end
    end
  end
end
