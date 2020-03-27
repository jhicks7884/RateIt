class VehicleRatings < ApplicationRecord
    belongs_to :users
    has_many :vehicles, through: :users
  end