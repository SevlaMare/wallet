class TransactionsController < ApplicationController
  before_action :require_login, only: %i[index new create external]

  def index
    @transactions = current_user.transactions
      .sort_most_recent.includes(:group)
    # .with_group.sort_most_recent.includes(:group)
  end

  def new
    @transaction = current_user.transactions.build
    @groups = Group.all
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    return redirect_to transactions_path if @transaction.save

    flash[:errors] = @transaction.errors.full_messages
    redirect_to new_transaction_path
  end

  def external
    @external_trans = current_user.transactions.without_group.sort_most_recent.includes(:group)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
