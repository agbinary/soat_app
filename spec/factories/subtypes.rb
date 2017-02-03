FactoryGirl.define do
  factory :subtype do
    description { Faker::Lorem.word }
    association :vehicle
  end
end
