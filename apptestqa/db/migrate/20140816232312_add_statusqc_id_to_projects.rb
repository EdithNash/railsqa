class AddStatusqcIdToProjects < ActiveRecord::Migration
  def change
  	add_column :proyects, :statusqc_id, :integer
    add_index  :proyects, :statusqc_id
  end
end
