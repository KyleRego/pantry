class AddUnitIdForeignKeyToAmounts < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :amounts, :units, column: :unit_id
  end
end
