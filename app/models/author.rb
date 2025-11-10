class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true, uniqueness: true
  validates :bio, presence: true
end
