class CreateSeverities < ActiveRecord::Migration
  def change
    create_table :severities do |t|
      t.string :description

      t.timestamps
    end
  end
end
