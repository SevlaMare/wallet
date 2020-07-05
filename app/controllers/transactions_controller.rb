class TransactionsController < ApplicationController
  before_action :require_login, only: %i[index new create external]

  def index
    @transaction = Transaction.all.eager_load(:group)
    @group = Group.all
  end

  def new
    @transaction = current_user.transactions.build
    @groups = Group.all
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    return redirect_to transactions_path if @transaction.save

    # flash[:error] = 'Transaction fail'
    redirect_to new_transaction_path
  end

  def external
    @transaction = Transaction.all
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
