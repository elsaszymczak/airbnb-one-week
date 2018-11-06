class Camp < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # validates :name, :description, :price, :location, presence: true
end
