module GroupsHelper
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
end
