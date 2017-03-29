class OfferedProduct < ApplicationRecord
	belongs_to :product
	belongs_to :distributor
	validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true
end