class AddUsersIdToTestcases < ActiveRecord::Migration
  def change
  	add_column	:testcases, :user_id, :integer
  	add_index 	:testcases, :user_id
  end
end
