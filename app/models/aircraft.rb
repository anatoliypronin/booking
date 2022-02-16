class Aircraft < ApplicationRecord
  self.primary_key = :aircraft_code

  has_many :seats, dependent: :destroy, foreign_key: :aircraft_code, inverse_of: :aircraft
  has_many :flights, dependent: :destroy, foreign_key: :aircraft_code, inverse_of: :aircraft
end
