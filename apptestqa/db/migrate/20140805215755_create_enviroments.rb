class CreateEnviroments < ActiveRecord::Migration
  def change
    create_table :enviroments do |t|
      t.string :description

      t.timestamps
    end
  end
end
