class TransactionsController < ApplicationController
  before_action :require_login, only: [:index, :new, :create, :external]

  def index
    @transaction = Transaction.all
  end

  def new
    @transaction = current_user.transactions.build
    @groups = Group.all
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    @transaction.save

    redirect_to user_path(current_user.id)
  end

  def external
    @transaction = Transaction.all
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
