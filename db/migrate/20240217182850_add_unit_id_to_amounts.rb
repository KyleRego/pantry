class AddUnitIdToAmounts < ActiveRecord::Migration[7.0]
  def change
    add_column :amounts, :unit_id, :integer
  end
end
