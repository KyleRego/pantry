class AddSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.string :step, null: false
      t.string :notes
    end
  end
end
