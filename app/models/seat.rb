class Seat < ApplicationRecord
  self.primary_key = :aircraft_code, :seat_no
end
