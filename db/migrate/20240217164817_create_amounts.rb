class CreateAmounts < ActiveRecord::Migration[7.0]
  def change
    create_table :amounts do |t|
      t.string :name
      t.string :type
      t.integer :count
      t.float :volume
      t.float :weight
      t.boolean :excess

      t.timestamps
    end
  end
end
