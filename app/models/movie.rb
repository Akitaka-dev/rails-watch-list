class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # validates :rating, presence: true, numericality: { only_float: true }
  has_many :bookmarks
  has_many :lists, through: :bookmarks
end
