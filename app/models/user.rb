class User < ApplicationRecord
  has_many :transactions

  # active storage
  has_one_attached :image

  validates :name,
            presence: true,
            uniqueness: true,
            length: { in: 3..12 }
end
