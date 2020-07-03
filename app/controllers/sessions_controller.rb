class SessionsController < ApplicationController
  # login page
  def new; end

  # login button
  def create
    return unless (userx = User.find_by(name: params[:username_in]))

    cookies[:current_user_id] = {
      value: userx.id, expires: Time.now + 3600
    }

    redirect_to root_path
  end

  # logout button
  def destroy
    cookies.delete(:current_user_id)

    redirect_to new_session_path
  end
end
