class Group < ApplicationRecord
  has_many :transactions

  scope :sort_alphabetical, -> { order(name: :asc) }
  
end
