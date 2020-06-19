class SessionsController < ApplicationController
  # login page
  def new; end

  # login button
  def create
    # find_by for start only (can throw 404)
    if userx = User.find_by(name: params[:username_in])
      cookies[:current_user_id] = { value: userx.id, expires: Time.now + 3600}
    end
    redirect_to user_path(cookies[:current_user_id])
  end

  # logout
  def destroy
    # end session
  end
end
