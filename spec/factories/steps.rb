# frozen_string_literal: true

FactoryBot.define do
  factory :step do
    recipe { create(:recipe) }
    step { "Thing you need to do as part of cooking the recipe" }
    notes { "Additional notes about the step" }
    number { recipe.steps.count + 1 }
  end
end
