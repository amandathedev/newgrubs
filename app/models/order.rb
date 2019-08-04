class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  def viewable
    "Order No. #{self.id}"
  end
end
