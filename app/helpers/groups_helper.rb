module GroupsHelper
  def groups_list(groups)
    content_tag :ul do
      groups.map do |line|
        concat(content_tag(:li, (link_to line.name, group_path(line))))
      end
    end
  end
end
