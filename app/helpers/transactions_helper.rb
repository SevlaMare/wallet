module TransactionsHelper
  def total_amount_with_group
    Transaction.where.not(group_id: false).sum(:amount)
  end
end
