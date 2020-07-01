class UsersController < ApplicationController
  before_action :require_login, only: %i[show]

  def show
    # user profile
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
