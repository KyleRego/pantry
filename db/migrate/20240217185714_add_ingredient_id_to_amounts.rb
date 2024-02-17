class AddIngredientIdToAmounts < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :amount_id, :integer
  end
end
