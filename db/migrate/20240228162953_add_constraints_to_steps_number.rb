class AddConstraintsToStepsNumber < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE steps ADD CHECK (number >= 0);"
  end
end
