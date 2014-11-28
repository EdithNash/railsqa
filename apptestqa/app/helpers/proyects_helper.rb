module ProyectsHelper
	def classification_name(id)
		classification = Classification.find(id)
		classification.description if classification		
	end

	def statusqc_name(id)
		statusqc = Statusqc.find(id)
		statusqc.description if statusqc		
	end
end
