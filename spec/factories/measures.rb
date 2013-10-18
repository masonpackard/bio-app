# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :measure do
    user_id 1
    measure_date "2013-10-17 20:55:13"
    measure_distance 1.5
    measure_calories 1.5
    measure_elevation 1.5
  end
end
