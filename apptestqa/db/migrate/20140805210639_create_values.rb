class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :value

      t.timestamps
    end
  end
end
