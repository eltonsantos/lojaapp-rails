class Item < ApplicationRecord
  has_many :order_items
  has_many :cart_items

  validates :name, :price, :stock_quantity, presence: true
end
