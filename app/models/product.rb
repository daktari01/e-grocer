class Product < ApplicationRecord
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :stock, numericality: { greater_than_or_equal_to: 0,  only_integer: true }
    has_many :order_items
end
