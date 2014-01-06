class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
	def confirm_logged_in
		unless session[:user_id]
			flash[:notice] = "Please log in to continue"
			redirect_to(:controller => 'access', :action => 'login')
			return false
		else
			return true
		end
	end

	

	def logged_in?
		session[:user_id]
	end
	
end
