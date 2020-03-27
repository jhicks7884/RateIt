class Vehicle < ApplicationRecord
  has_many :ratings
  has_many :users, through: :ratings
  belongs_to :user
end