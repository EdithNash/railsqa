class AddComponentsIdToTestcases < ActiveRecord::Migration
  def change
  	add_column	:testcases, :component_id, :integer
  	add_index 	:testcases, :component_id
  end
end
