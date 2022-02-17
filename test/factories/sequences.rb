FactoryBot.define do
  sequence :string do |n|
    "string-#{n}"
  end

  sequence :airport_code do |n|
    format('%03d', n)
  end
end
