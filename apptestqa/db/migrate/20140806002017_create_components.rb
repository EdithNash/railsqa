class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :description

      t.timestamps
    end
  end
end
