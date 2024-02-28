class MakeRecipesDescriptionNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :recipes, :description, false
  end
end
