class AddForeignKeysToIngredientsRecipes < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :ingredients_recipes, :ingredients, column: :ingredient_id
    add_foreign_key :ingredients_recipes, :recipes, column: :recipe_id
  end
end
