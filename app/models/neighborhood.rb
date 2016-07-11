class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :listings
  has_many :reservations
  has_many :guests, through: :reservations, class_name: 'User'
  has_many :reviews, through: :reservations
end
