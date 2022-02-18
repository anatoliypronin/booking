class Booking < ApplicationRecord
  self.primary_key = :book_ref
  self.table_name = 'bookings.bookings'

  has_many :tickets, foreign_key: :book_ref, inverse_of: :booking, dependent: :destroy
end
