class HouseDate < ApplicationRecord
  belongs_to :house
  validates :date, presence: true, allow_blank: false

  def available
    if house.booking.date == date
      return false
    else
      return true
    end
  end
end
