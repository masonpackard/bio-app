# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal do
    user_id 1
    name "MyText"
    type "MyText"
    metric 1
  end
end
