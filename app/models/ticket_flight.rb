class TicketFlight < ApplicationRecord
  self.primary_keys = :ticket_no, :flight_id

  belongs_to :ticket, foreign_key: :ticket_no, inverse_of: :ticket_flights
  belongs_to :flight
  has_one :boarding_pass, foreign_key: %i[ticket_no flight_id], inverse_of: :ticket_flight, dependent: :destroy
end
