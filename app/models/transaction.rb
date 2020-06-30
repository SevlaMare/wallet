class Transaction < ApplicationRecord
  belongs_to :user

  scope :sort_most_recent, -> { order(created_at: :desc) }
  scope :sort_most_recent, -> { order(created_at: :desc) }
end
