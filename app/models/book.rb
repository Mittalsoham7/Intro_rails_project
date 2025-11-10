class Book < ApplicationRecord
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres
  validates :title, presence: true
  validates :description, presence: true
  validates :published_year, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
