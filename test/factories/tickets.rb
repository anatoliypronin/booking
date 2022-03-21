FactoryBot.define do
  factory :ticket do
    ticket_no
    booking
    passenger_id
    passenger_name { [generate(:first_name), generate(:last_name)].join(' ') }
    contact_data { { email: generate(:email), phone: generate(:phone) } }
  end
end
