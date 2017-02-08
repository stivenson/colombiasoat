class Vehicle < ApplicationRecord
  belongs_to :subtype_vehicle
  belongs_to :user
  has_many :soats
end
