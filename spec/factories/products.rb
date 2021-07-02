# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Food.dish }
    value  { Faker::Number.decimal(l_digits: 2) }
    restaurant
  end
end
