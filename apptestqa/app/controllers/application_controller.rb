class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# Le indica a Devise qe deses de logearte te mande al admin ath
	def after_sign_in_path_for(resource)
	    admin_path
	 end

end

