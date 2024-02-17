class AddCategoryIdForeignKeyToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :ingredients, :categories, column: :category_id
  end
end
