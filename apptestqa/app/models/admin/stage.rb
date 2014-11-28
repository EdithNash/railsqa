class Admin::Stage < ActiveRecord::Base
	#validar presencia, tamaño  originalidad
	validates :description, :presence => true
	validates :description, :length => { :minimum => 2 }
	validates :description, :uniqueness => { :message => "El Stage ya se uso" }
end
