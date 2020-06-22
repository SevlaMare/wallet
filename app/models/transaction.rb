class Transaction < ApplicationRecord
  belongs_to :AuthorId, class_name: 'User'
end
