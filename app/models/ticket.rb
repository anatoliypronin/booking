class Ticket < ApplicationRecord
  self.primary_key = :ticket_no
  self.table_name = 'bookings.tickets'

  belongs_to :booking, foreign_key: :book_ref, inverse_of: :tickets
  has_many :ticket_flights, foreign_key: :ticket_no, dependent: :destroy, inverse_of: :ticket

  validates :ticket_no, :passenger_id, :passenger_name, presence: true
end
