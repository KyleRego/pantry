class DropRecipesSteps < ActiveRecord::Migration[7.0]
  def change
    drop_table :recipes_steps
  end
end
