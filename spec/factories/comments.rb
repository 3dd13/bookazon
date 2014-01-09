# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content "MyText"
    admin_id 1
    book_id 1
  end
end
