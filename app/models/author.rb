class Author < ApplicationRecord
  validates :is_representative, presence: true
end
