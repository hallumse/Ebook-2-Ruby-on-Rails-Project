FactoryBot.define do
  factory :user do
    name { "Bob" }
    sequence(:email) { |n| "user#{n}@email.com" }
    password { "asdfasdf" }
  end
end
