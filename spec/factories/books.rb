require 'faker'

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    price { rand(5..19) }
    author { create :user }
    # content "abc123"
  end
end
