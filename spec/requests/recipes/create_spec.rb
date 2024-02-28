# frozen_string_literal: true

require "rails_helper"

RSpec.describe RecipesController, "#create" do
  subject(:post_create_recipe) do
    post recipes_path, params:
  end

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
      }
    }
  end

  it "creates a recipe with a step for valid data and redirects" do
    expect { post_create_recipe }.to change(Recipe, :count).by(1).and change(Step, :count).by(1)
    expect(response).to have_http_status(:found)
  end
end