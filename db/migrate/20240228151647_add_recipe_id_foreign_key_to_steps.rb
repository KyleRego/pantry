class AddRecipeIdForeignKeyToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :steps, :recipe, foreign_key: true
  end
end
