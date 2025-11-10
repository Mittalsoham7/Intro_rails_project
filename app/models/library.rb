class Library < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  validates :phone, presence: true
  validates :website, presence: true
end
