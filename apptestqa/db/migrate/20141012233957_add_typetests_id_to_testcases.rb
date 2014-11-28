class AddTypetestsIdToTestcases < ActiveRecord::Migration
  def change
  	add_column	:testcases, :typetest_id, :integer
  	add_index 	:testcases, :typetest_id
  end
end
