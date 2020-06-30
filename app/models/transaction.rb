class Transaction < ApplicationRecord
  belongs_to :user

  scope :sort_most_recent, -> { order(created_at: :desc) }

  def total_amount
    Transactions.sum(:amount)
  end
end
