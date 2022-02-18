FactoryBot.define do
  sequence :integer, aliases: [:range] do |n|
    n
  end

  sequence :string do |n|
    "string-#{n}"
  end

  sequence :uniq_code, aliases: %i[airport_code aircraft_code] do |n|
    format('%03d', n)
  end
end
