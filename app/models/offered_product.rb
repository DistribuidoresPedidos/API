class OfferedProduct < ApplicationRecord
	belongs_to :product
	belongs_to :distributor
	validates :price, numericality: { less_than_or_equal_to: 0 }, presence: true
end