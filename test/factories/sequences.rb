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

  sequence :passenger_id do
    Faker::IDNumber.valid
  end

  sequence :first_name do
    Faker::Name.first_name
  end

  sequence :last_name do
    Faker::Name.last_name
  end

  sequence :email do
    Faker::Internet.email
  end

  sequence :phone do
    Faker::PhoneNumber.cell_phone_in_e164
  end
end
