class RemoveRecipesSteps < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :steps
  end
end
