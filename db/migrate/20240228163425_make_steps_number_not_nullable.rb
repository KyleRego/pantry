class MakeStepsNumberNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :steps, :number, false
  end
end
