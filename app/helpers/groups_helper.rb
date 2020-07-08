module GroupsHelper
  # index - list all groups
  def groups_list(groups)
    content_tag(:div, class: 'list') do
      groups.map do |line|
        concat(
          content_tag(:div, class: 'list-item') do
            content_tag(:p, (link_to image_tag(line.icon, class: 'icon float'),
                                     group_path(line.id), class: 'dark-text')) +
            content_tag(:p, (link_to line.name, group_path(line.id), class: 'dark-text')) +
            tag(:hr) +
            content_tag(:p, line.created_at.strftime('%d %b %Y'), class: 'dark-text') +
            tag(:br)
          end
        )
      end
    end
  end

  # show - all transactions from a group
  def transactions_of(group_trans)
    content_tag(:div, class: 'list') do
      group_trans.map do |line|
        concat(
          content_tag(:div, class: 'list-item p-1') do
            concat(
              content_tag(:div, class: 'flex space-between') do
                content_tag(:p, line.name, class: 'dark-text') +
                content_tag(:p, "USD$#{number_with_precision(line.amount, :precision => 2)}", class: 'dark-text')
              end
            )
            concat(
              content_tag(:div) do
                tag(:br) +
                content_tag(:p, "#{line.created_at.strftime("%d %b %Y")} • by #{line.user.name}", class: 'dark-text')              
              end
            )
          end
        )
      end
    end
  end
end
