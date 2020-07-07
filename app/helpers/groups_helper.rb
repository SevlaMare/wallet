module GroupsHelper
def group_user
  
end

  def groups_list(groups)
    content_tag(:div, :class => "list") do
      groups.map do |line|
          concat(
            content_tag(:div, :class => "list-item") do
              # content_tag(:a, link_to group_path(line.id))+

              tag(:hr)+
              content_tag(:p, line.created_at.strftime("%d %b %Y"), :class => "dark-text")+
              tag(:br)
            end
          )
      end
    end
  end
end
