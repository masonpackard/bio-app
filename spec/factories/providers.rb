# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :provider do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    active false
    token "MyText"
  end
end