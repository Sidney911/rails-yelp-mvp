class Review < ApplicationRecord
  belongs_to :restaurant
  # this lets me do review.restaurant to get a review's restaurant
  validates :content, presence: true, length: { minimum: 5 }
end
