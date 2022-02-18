FactoryBot.define do
  factory :booking do
    book_ref
    book_date { 1.day.from_now }
    total_amount
  end
end
