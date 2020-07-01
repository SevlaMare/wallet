class Group < ApplicationRecord
  has_many :transactions

  scope :sort_alphabetical, -> { order(name: :asc) }

  validates :name,
            presence: true
end
