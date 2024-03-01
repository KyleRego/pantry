# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    name { "Recipe name" }
    description { "Recipe description" }
  end
end
