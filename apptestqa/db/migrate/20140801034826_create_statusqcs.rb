class CreateStatusqcs < ActiveRecord::Migration
  def change
    create_table :statusqcs do |t|
      t.string :description

      t.timestamps
    end
  end
end
