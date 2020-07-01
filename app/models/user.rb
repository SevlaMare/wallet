class User < ApplicationRecord
  before_save { self.name = name.camelize }

  has_many :transactions

  validates :name,
    presence: true,
    uniqueness: true,
    length: { in: 4..12 }
end
