class House < ApplicationRecord
  validates :name, :address, :price, presence: true
  has_many_attached :photos
  belongs_to :user
end
