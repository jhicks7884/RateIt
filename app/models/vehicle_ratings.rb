class VehicleRatings < ApplicationRecord
    belongs_to :user
    belongs_to :vehicles
  end