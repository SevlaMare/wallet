class GroupsController < ApplicationController
  def index
    # list all groups
  end

  def show
    # access all transactions from one group
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
