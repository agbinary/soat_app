FactoryGirl.define do
  factory :subtype do
    min 0
    max 5
    association :vehicle_class
  end
end
