class BoardingPass < ApplicationRecord
  self.primary_key = :ticket_no, :flight_id
end
