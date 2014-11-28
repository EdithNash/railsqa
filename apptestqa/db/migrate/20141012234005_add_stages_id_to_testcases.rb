class AddStagesIdToTestcases < ActiveRecord::Migration
  def change
  	add_column	:testcases, :admin_stage_id, :integer
  	add_index 	:testcases, :admin_stage_id
  end
end
