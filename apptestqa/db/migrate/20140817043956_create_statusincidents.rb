class CreateStatusincidents < ActiveRecord::Migration
  def change
    create_table :statusincidents do |t|
      t.string :description

      t.timestamps
    end
  end
end
