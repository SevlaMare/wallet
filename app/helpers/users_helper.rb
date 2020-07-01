module UsersHelper
  def current_username
    return unless current_user

    content_tag(:h1, (current_user.name))
  end
end
