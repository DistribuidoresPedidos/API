class Route < ApplicationRecord
  belongs_to :distributor
  validates :name , :sites , presence: true
end
