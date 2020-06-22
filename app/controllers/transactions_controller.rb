class TransactionsController < ApplicationController
  # before_save :auto_timestamp

  def index
    # home
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.save
  end

  private

  def transaction_params
    params.require(:transaction).permit(:Name, :Amount)
  end

  # def auto_timestamp
  #   self.createAt = DateTime.now
  # end
end
