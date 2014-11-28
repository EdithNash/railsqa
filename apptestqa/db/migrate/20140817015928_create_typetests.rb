class CreateTypetests < ActiveRecord::Migration
  def change
    create_table :typetests do |t|
      t.string :description

      t.timestamps
    end
  end
end
