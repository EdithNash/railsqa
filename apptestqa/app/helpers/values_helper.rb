module ValuesHelper
	def classification_name(id)
		classification = Classification.find(id)
		classification.description if classification		
	end

	def indicator_name(id)
		indicator = Indicator.find(id)
		indicator.description if indicator	
	end
end
