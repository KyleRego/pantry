class DropALotOfTheDatabase < ActiveRecord::Migration[7.0]
  def change
    remove_column :ingredients, :amount_id
    remove_column :ingredients, :countable
    remove_column :ingredients, :volumeable
    remove_column :ingredients, :weighable
    remove_column :ingredients, :excess
    drop_table :amounts
  
  end
end
