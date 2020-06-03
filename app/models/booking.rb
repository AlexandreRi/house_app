class Booking < ApplicationRecord
  belongs_to :profile
  belongs_to :house
  validates :date, presence: true, allow_blank: false
end
