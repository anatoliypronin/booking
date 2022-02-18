FactoryBot.define do
  sequence :integer, aliases: %i[range total_amount] do |n|
    n
  end

  sequence :string do |n|
    "string-#{n}"
  end

  sequence :air_code, aliases: %i[airport_code aircraft_code] do |n|
    format('%03d', n)
  end

  sequence :ticket_no do |n|
    format('%013d', n)
  end

  sequence :book_ref do |n|
    format('%06d', n)
  end
end
