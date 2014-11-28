class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :number
      t.text :description
      t.text :expected
      t.text :result
      t.string :rails
      t.string :g
      t.string :model
      t.string :Step
      t.integer :number
      t.text :description
      t.text :expected
      t.text :result

      t.timestamps
    end
  end
end
