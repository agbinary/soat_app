FactoryGirl.define do
  factory :vehicle do
    license_plate { Faker::Number.number(6) }
    subtype { Faker::Number.number(3) }
    age { Faker::Number.number(2) }
    association :vehicle_class
  end
end
