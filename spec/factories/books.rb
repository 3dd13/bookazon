FactoryGirl.define do
  factory :book do
    sequence(:title){|n| "Title#{n}" }
    author "abcd"
    isbn   "1234"
    price  5
    
    admin
  end
end
