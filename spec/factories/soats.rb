FactoryGirl.define do
  factory :soat do
    start_date Date.today
    end_date Date.today
    premium_value { Faker::Number.number(5) }
    fosyga { Faker::Number.number(5) }
    runt { Faker::Number.number(3) }
    total_value { Faker::Number.number(5) }
    association :user
    association :vehicle
  end
end
