# frozen_string_literal: true

class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show edit new_step update destroy ]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
    3.times do |i|
      @recipe.steps.build(number: i)
    end
  end

  def edit
  end

  def new_step
    @new_step_number = @recipe.steps.count
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_url(@recipe), notice: "Recipe was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @recipe.steps.each(&:destroy!)
    @recipe.update!(recipe_params)
    redirect_to recipe_url(@recipe), notice: "Recipe was successfully updated."

    rescue

    render :edit, status: :unprocessable_entity
  end

  def destroy
    @recipe.destroy

    redirect_to recipes_url, notice: "Recipe was successfully destroyed."
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :steps, :description, steps_attributes: [:step, :notes, :number])
    end
end
