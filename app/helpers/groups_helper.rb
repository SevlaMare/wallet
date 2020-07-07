module GroupsHelper
  def groups_list(groups)
    content_tag :div, :class => "list" do
      groups.map do |line| 
        concat(
          #content_tag(:a, link_to group_path(line.id))
          tag(:hr)+
          content_tag(:p, line.created_at.strftime("%d %b %Y"), :class => "dark-text")
        )
      end
    end
  end
end


# content_tag(:li, (link_to line.name, event_path(line.id)))
# concat(content_tag(:img, line.icon))
# concat(content_tag(:li, (link_to line.name, group_path(line))))
# concat(content_tag(:a, line.created_at))