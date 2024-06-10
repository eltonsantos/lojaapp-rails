class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :store

  has_many :order_items
  has_many :items, through: :order_items

  enum status: { pending: 0, in_preparation: 1, confirmed: 2, in_transit: 3, ready_for_pickup: 4 }
  validates :order_date, :total, :status, presence: true

  def advance_status
    case status
    when 'pending'
      update(status: 'in_preparation')
    when 'in_preparation'
      update(status: 'confirmed')
    when 'confirmed'
      update(status: 'in_transit')
    end
  end
end
