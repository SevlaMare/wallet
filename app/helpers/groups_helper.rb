module GroupsHelper
  def groups_list(groups)
    content_tag :ul do
      groups.sort_alphabetical.map do |line|
        concat(content_tag(:img, line.icon))
        concat(content_tag(:li, (link_to line.name, group_path(line))))
        concat(content_tag(:a, line.created_at))
      end
    end
  end
end
