class AddNumberToSteps < ActiveRecord::Migration[7.0]
  def change
    add_column :steps, :number, :int
  end
end
