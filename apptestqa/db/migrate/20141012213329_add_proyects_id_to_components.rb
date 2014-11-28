class AddProyectsIdToComponents < ActiveRecord::Migration
  def change
  	add_column	:components, :proyect_id, :integer
  	add_index 	:components, :proyect_id
  end
end
