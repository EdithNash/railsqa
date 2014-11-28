class Stage < ActiveRecord::Base
#validar presencia, tamaño  originalidad
	validates :Description, :content, :presence => true
	validates :Description, :length => { :minimum => 2 }
	validates :Description, :uniqueness => { :message => "El Stage ya se uso" }
end
