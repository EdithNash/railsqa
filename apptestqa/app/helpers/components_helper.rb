module ComponentsHelper
	def proyect_name(id)
		project = Proyect.find(id)
		project.name if project		
	end	
end
