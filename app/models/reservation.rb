class Reservation < ApplicationRecord
  belongs_to :van
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
