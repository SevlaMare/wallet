class ApplicationController < ActionController::Base
  include SessionsHelper

  add_flash_types :success

  def require_login
    redirect_to new_session_path, notice: 'You must be logged' unless current_user
  end

  def not_logged
    redirect_to root_path, notice: 'You already logged' if current_user
  end
end
