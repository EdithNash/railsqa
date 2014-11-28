class AddClassificationIdToValues < ActiveRecord::Migration
  def change
  	add_column :values, :classification_id, :integer
    add_index  :values, :classification_id
  end
end
