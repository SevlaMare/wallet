class User < ApplicationRecord
  has_many :transactions

  validates :name,
            presence: true,
            uniqueness: true,
            length: { in: 3..12 }
end
