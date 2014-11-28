class Value < ActiveRecord::Base
	belongs_to :classification
	belongs_to :indicator
end
