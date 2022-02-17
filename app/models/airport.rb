class Airport < ApplicationRecord
  self.primary_key = :airport_code
  self.table_name = 'bookings.airports_data'
end
