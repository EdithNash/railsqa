class CreateAdminStages < ActiveRecord::Migration
  def change
    create_table :admin_stages do |t|
      t.string :description

      t.timestamps
    end
  end
end
