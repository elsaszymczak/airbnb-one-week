class Camp < ApplicationRecord
  belongs_to :user
  has_many :bookings

    mount_uploader :photo, PhotoUploader


  validates :name, :description, :price, :location, presence: true
end
