class Product < ApplicationRecord
    validates :name, :category, :weight, :photo, presence: true
    validates :weight , numericality: true
end
