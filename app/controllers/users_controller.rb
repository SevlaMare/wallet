class UsersController < ApplicationController
  def show
    # user profile
  end

  def new
    @user = User.new
    # new user page
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
