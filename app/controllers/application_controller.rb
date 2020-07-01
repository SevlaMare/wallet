class ApplicationController < ActionController::Base
  include SessionsHelper

  def require_login
    redirect_to new_session_path, notice: 'You must be logged in to access this section' unless current_user
  end
end
