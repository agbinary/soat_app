FactoryGirl.define do
  factory :contribution do
    commercial_rate { Faker::Number.decimal(2) }
    premium_value { Faker::Number.number(5) }
    fosyga { Faker::Number.number(5) }
    subtotal_premium_value_fosyga { Faker::Number.number(5) }
    runt { Faker::Number.number(5) }
    total_value { Faker::Number.number(5) }
    association :subtype
  end
end
