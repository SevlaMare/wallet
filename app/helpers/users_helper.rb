module UsersHelper
  def current_username
    return unless current_user

    content_tag(:h1, current_user.name)
  end

  def display_avatar(who)
    if who.image.attached?
      image_tag(who.image, class: "avatar center-space")
    end
  end
end
