class House < ApplicationRecord
  validates :name, :address, :price, presence: true
end
