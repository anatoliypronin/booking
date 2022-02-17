class Ticket < ApplicationRecord
  self.primary_key = :ticket_no

  belongs_to :booking, foreign_key: :book_ref, inverse_of: :tickets
  has_many :ticket_flights, foreign_key: :ticket_no, dependent: :destroy, inverse_of: :ticket
end
