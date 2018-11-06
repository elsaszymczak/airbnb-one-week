class Booking < ApplicationRecord
  belongs_to :camp
  belongs_to :user

  validates :starts_at, :ends_at, presence: true
end
