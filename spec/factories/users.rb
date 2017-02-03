FactoryGirl.define do
  factory :user do
    identification_type 1
    identification_number { Faker::Number.number(8) }
    name { Faker::Name.first_name }
    surname { Faker::Name.last_name }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.phone_number }
  end
end
