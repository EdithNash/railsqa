class Classification < ActiveRecord::Base
	has_many :proyects
	has_many :values
end
