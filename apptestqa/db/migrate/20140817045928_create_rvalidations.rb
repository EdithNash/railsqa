class CreateRvalidations < ActiveRecord::Migration
  def change
    create_table :rvalidations do |t|
      t.string :description

      t.timestamps
    end
  end
end
