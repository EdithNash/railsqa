class Proyect < ActiveRecord::Base
	belongs_to :classification
	belongs_to :statusqc
end
