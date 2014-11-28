class AddClassificationIdToProjects < ActiveRecord::Migration
  def change
  	add_column :proyects, :classification_id, :integer
    add_index  :proyects, :classification_id
  end
end
