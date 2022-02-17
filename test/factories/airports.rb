FactoryBot.define do
  factory :airport do
    airport_code
    airport_name { { en: Faker::Address.city, ru: Faker::Address.city } }
    city { { en: Faker::Address.city, ru: Faker::Address.city } }
    coordinates { ActiveRecord::Point.new(Faker::Address.latitude, Faker::Address.longitude) }
    timezone { Faker::Address.time_zone }
  end
end
