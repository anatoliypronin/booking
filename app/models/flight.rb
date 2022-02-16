class Flight < ApplicationRecord
  self.primary_key = :flight_id

  belongs_to :aircraft, foreign_key: :aircraft_code, inverse_of: :flights
  belongs_to :arrival_airport, foreign_key: :arrival_airport, inverse_of: :flight, class_name: 'Airpport'
  belongs_to :departure_airport, foreign_key: :departure_airport, inverse_of: :flight, class_name: 'Airpport'
  has_many :ticket_flights, dependent: :destroy
end
