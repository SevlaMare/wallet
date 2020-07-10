module ApplicationHelper
  def flash_messages(type, style = 'alert-danger')
    flash.map do |_msg|
      content_tag(:p, type, class: "alert #{style}") if type
    end.join.html_safe
  end

  def flash_errors
    return unless flash[:errors]

    content_tag(:ul) do
      flash[:errors].map do |error|
        content_tag(:li, error, class: 'alert alert-danger')
      end.join.html_safe
    end
  end
end
