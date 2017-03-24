class Product < ApplicationRecord
	has_many :offeredProducts
	has_many :distributors, :through => :offeredProducts

	has_many :offerToOrder
	has_many :orderProducts, :through => :offerToOrder

    validates :name, :category, :weight, :photo, presence: true
    validates :weight , numericality: true
end
