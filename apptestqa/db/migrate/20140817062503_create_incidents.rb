class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.text :description
      t.text :evidence
      t.date :incidente_date
      t.date :rvalidation_date
      t.integer :rvalidationcount

      t.timestamps
    end
  end
end
