module TestcasesHelper
	def typetest_name(id)
		typetest = Typetest.find(id)
		typetest.description if typetest		
	end

	def stage_name(id)
		stage = Admin::Stage.find(id)
		stage.description if stage		
	end

	def user_name(id)
		user = User.find(id)
		user.name if user		
	end

	def component_name(id)
		component = Component.find(id)
		component.description if component		
	end
end
