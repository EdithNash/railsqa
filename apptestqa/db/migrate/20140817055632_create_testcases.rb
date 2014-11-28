class CreateTestcases < ActiveRecord::Migration
  def change
    create_table :testcases do |t|
      t.string :number
      t.string :name
      t.text :description
      t.text :request
      t.text :precondition
      t.text :comment
      t.date :execution

      t.timestamps
    end
  end
end
