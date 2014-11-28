class AddIndicatorIdToValues < ActiveRecord::Migration
  def change
  	add_column :values, :indicator_id, :integer
    add_index  :values, :indicator_id
  end
end
