class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])

    @transactions = Transaction
      .includes(:group, :user)
      .where(group_id: @group.id)
      .order('created_at DESC')
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
