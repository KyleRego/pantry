class CreateRecipesStepsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :recipes, :steps do |t|
      # t.index [:recipe_id, :step_id]
      t.index [:step_id, :recipe_id], unique: true
    end
  end
end
