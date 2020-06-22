class TransactionsController < ApplicationController
  def index
    # home
  end

  def new
    @transaction = current_user.transactions.build
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    @transaction.save

    redirect_to user_path(current_user.id)
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount)
  end
end
