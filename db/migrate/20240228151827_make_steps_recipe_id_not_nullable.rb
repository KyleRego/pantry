class MakeStepsRecipeIdNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :steps, :recipe_id, false
  end
end
