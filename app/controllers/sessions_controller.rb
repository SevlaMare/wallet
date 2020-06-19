class SessionsController < ApplicationController
  # login page
  def new; end

  # login button
  def create
    if userx = User.find_by(name: params[:username_in])
      sessions[:current_user_id] = userx.id

      redirect_to user_path(sessions[:current_user_id])
    end
  end

  # logout
  def destroy
    sessions.delete(current_user_id)
  end
end
