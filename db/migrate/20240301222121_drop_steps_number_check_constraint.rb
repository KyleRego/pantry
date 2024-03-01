class DropStepsNumberCheckConstraint < ActiveRecord::Migration[7.0]
  def change
    execute "alter table steps drop constraint steps_number_check"
  end
end
