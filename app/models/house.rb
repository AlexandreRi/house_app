class House < ApplicationRecord
  validates :name, :address, :price, presence: true
  has_one_attached :photo
  belongs_to :profile, optional: true
end
