module TransactionsHelper
  def total_amount_with_group
    Transaction.with_group.sum(:amount)
  end

  def total_amount_without_group
    Transaction.without_group.sum(:amount)
  end
end
