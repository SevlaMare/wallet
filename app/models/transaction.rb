class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :group, optional: true

  scope :sort_most_recent, -> { order(created_at: :desc) }
  scope :with_group, -> { where.not('group_id' => nil) }
  scope :without_group, -> { where('group_id' => nil) }

  validates :name,
            presence: true,
            length: { minimum: 3 }

  validates :amount,
            presence: true,
            length: { maximum: 12 }
end
