class Seat < ApplicationRecord
  self.primary_keys = :aircraft_code, :seat_no

  belongs_to :aircraft, foreign_key: :aircraft_code, inverse_of: :seats
end
