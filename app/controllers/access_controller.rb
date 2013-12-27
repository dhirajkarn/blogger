class AccessController < ApplicationController

	before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]

	def login
		
	end

	def attempt_login
		authorized_user = User.authenticate(params[:username], params[:password])
		if authorized_user
			session[:user_id] = authorized_user.id
			session[:username] = authorized_user.username
			flash[:notice] = "You are now logged in!"
			redirect_to(:controller => 'blogs', :action => 'list')
		else
			flash[:notice] = "Invalid username or password"
			redirect_to(:action => 'login')
		end
	end

	def logout
		session[:user_id] = nil
		session[:username] = nil
		flash[:notice] = "You are now logged out!"
		redirect_to(:action => 'login')
	end

	
end
