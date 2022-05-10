class Review < ApplicationRecord
  belongs_to :reservation
  validates :comment, presence: true, length: { minimum: 15 }
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..5 }
end
