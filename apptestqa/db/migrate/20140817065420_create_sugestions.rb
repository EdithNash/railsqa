class CreateSugestions < ActiveRecord::Migration
  def change
    create_table :sugestions do |t|
      t.text :description
      t.text :evidence
      t.date :suggestion_date
      t.text :resolution

      t.timestamps
    end
  end
end
