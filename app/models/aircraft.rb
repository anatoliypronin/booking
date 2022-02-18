class Aircraft < ApplicationRecord
  self.primary_key = :aircraft_code
  self.table_name = 'bookings.aircrafts_data'

  has_many :seats, dependent: :destroy, foreign_key: :aircraft_code, inverse_of: :aircraft
  has_many :flights, dependent: :destroy, foreign_key: :aircraft_code, inverse_of: :aircraft
end
