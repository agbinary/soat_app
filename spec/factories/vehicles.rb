FactoryGirl.define do
  factory :vehicle do
    description { Faker::Lorem.word }
  end
end
