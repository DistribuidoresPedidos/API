class Order < ApplicationRecord
  belongs_to :retailer
  belongs_to :route

  validates :state , :exitDate , :arrivalDate , presence: true
  validates :totalPrice ,numericality: true

end
