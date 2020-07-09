module UsersHelper
  def current_username
    return unless current_user

    content_tag(:h1, current_user.name)
  end

  def display_avatar(who)
    image_tag(who.image, class: 'avatar center-space') if who.image.attached?
  end
end
