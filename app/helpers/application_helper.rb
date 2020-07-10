module ApplicationHelper
  def flash_messages(type, style = 'alert-danger')
    flash.map do |_msg|
      content_tag(:p, type, class: "alert #{style}") if type
    end.join.html_safe
  end
end
