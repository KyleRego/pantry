class AddIngredientsRecipesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :ingredients, :recipes
  end
end
