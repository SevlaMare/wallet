class Transaction < ApplicationRecord
  belongs_to :user

  scope :sort_most_recent, -> { order(created_at: :desc) }
  scope :with_group, -> { where.not('group_id' => nil) }
  scope :without_group, -> { where('group_id' => nil) }
end
