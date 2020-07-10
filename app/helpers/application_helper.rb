module ApplicationHelper
  def flash_messages
    flash.map do |msg|
      content_tag(:p, notice, class: 'alert alert-danger') if notice
      content_tag(:p, success, class: 'alert alert-success') if success
      content_tag(:p, alert, class: 'alert alert-danger') if alert
    end.join.html_safe
  end
end
