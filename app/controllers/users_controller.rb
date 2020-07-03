class UsersController < ApplicationController
  before_action :require_login, only: %i[show]

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

      redirect_to root_path, notice: 'Account successfully created'
    else
      # flash.now[:alert] = @user.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
