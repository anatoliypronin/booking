FactoryBot.define do
  factory :aircraft do
    aircraft_code
    model { { en: Faker::Vehicle.manufacture, ru: Faker::Vehicle.manufacture } }
    range
  end
end
