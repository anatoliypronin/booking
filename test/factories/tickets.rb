FactoryBot.define do
  factory :ticket do
    ticket_no
    booking
    passenger_id { Faker::IDNumber.valid }
    passenger_name { [Faker::Name.first_name, Faker::Name.last_name].join(' ') }
    contact_data { { email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_in_e164 } }
  end
end
