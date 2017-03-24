class Retailer < ApplicationRecord
    # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  #QUESTION: validate the location 
  validates :name, :email, :phoneNumber,  presence: true
  validates :email , format: {with: VALID_EMAIL_REGEX }
  validates :email, :phoneNumber, uniqueness: true 
   
end
