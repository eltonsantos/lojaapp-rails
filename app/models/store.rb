class Store < ApplicationRecord
  has_many :orders
  validates :name, :address, presence: true
end
