class TransactionsController < ApplicationController
  #before_save :auto_timestamp

  def index
    # home
  end

  def new
    @cash = Transaction.new
  end

  def create
    @cash = Transaction.new(transaction_params)
    @cash.save
  end

  private
  def transaction_params
    params.require(:transaction).permit(:name, :amount)
  end

  # def auto_timestamp
  #   self.createAt = DateTime.now
  # end
end
