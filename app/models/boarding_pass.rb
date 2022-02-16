class BoardingPass < ApplicationRecord
  self.primary_keys = :ticket_no, :flight_id

  belongs_to :ticket_flight, foreign_key: %i[ticket_no flight_id], inverse_of: :boarding_pass
end
