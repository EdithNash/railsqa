class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|
      t.string :description
      t.text :definition
      t.text :calculation

      t.timestamps
    end
  end
end
