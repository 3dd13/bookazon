FactoryGirl.define do
  factory :admin do
    sequence(:email){|n| "admin#{n}@example.com" }
    password '12345678'
  end
end
