class House < ApplicationRecord
  validates :name, :address, :price, :user, presence: true
  has_many :photos
end
