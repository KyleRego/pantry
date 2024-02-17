class AddAmountIdForeignKeyToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :ingredients, :amounts, column: :amount_id
  end
end
