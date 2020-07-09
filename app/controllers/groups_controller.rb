class GroupsController < ApplicationController
  before_action :require_login, only: %i[index show new create]

  def index
    @groups = Group.all.sort_alphabetical
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    return redirect_to groups_path if @group.save
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
