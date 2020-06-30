module TransactionsHelper
  def total_amount_with_group
    Transaction.where.not('group_id' => nil).sum(:amount)
  end

  def total_amount_without_group
    Transaction.where('group_id' => nil).sum(:amount)
  end
end
