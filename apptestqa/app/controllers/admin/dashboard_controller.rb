class Admin::DashboardController < ApplicationController
	layout 'dashboard'  
	before_action :authenticate_user! #valida que este logueado el usuario
	
	def index
   
  	end
end
