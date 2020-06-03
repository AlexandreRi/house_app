class House < ApplicationRecord
  validates :name, :address, :price, presence: true
  has_one_attached :photo
  belongs_to :profile, optional: true
  geocoded_by :address
  has_many :house_dates
  has_many :bookings, dependent: :destroy
  after_validation :geocode, if: :will_save_change_to_address?
  before_validation :geocode, on: %i[create update]
end
