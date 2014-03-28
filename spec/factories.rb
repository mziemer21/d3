FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "blah#{n}" }
    sequence(:email) { |n| "foo#{n}@example.com" }
  end
end