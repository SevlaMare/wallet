class UsersController < ApplicationController
  before_action :require_login, only: %i[show]
  before_action :not_logged, only: %i[new]

  def show
    # user profile
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      cookies[:current_user_id] = @user.id

      redirect_to user_path(cookies[:current_user_id]),
        notice: 'Account successfully created'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
