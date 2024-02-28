# frozen_string_literal: true

require "rails_helper"

RSpec.describe RecipesController, "#new" do
  subject(:get_new_recipe) do
    get new_recipe_path
  end

  it "returns 200 OK response" do
    get_new_recipe
    expect(response).to have_http_status(:ok)
  end
end