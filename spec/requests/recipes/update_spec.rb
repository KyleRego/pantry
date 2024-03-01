# frozen_string_literal: true

require "rails_helper"

RSpec.describe RecipesController, "#update" do
  subject(:patch_update_recipe) do
    patch recipe_path(recipe), params:
  end

  let(:recipe) { create(:recipe) }

  let(:params) do
    {
      recipe: {
        name:,
        description:,
        steps_attributes:
      }
    }
  end

  let(:name) { "Some recipe name" }
  let(:description) { "Some recipe description" }
  let(:steps_attributes) do
    { 0 => {
        step: "boil 6 cups of water in a medium pan",
        notes: "some notes",
        number: 0
      },
      1 => {
        step: "another step",
        notes: "notes",
        number: 1
      }
    }
  end

  before { create(:step, recipe:) }

  it "updates the recipe and steps" do
    expect { patch_update_recipe }.to change(Recipe, :count).by(0).and change(Step, :count).by(1)
    expect(response).to have_http_status(:found)
  end
end