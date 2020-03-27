class Vehicle < ApplicationRecord
  has_many :users, through: :vehicle_ratings
end