class Bike < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_one_attached :photo
end
