class Van < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :description, :place, :model, :brand, :price, presence: true
  has_many_attached :photos
end
