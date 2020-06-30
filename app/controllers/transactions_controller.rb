class TransactionsController < ApplicationController
  def index
    # TODO: scope where group_id not nil
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
    # TODO: scope where group_id nil
    @transaction = Transaction.all
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
