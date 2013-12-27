class UsersController < ApplicationController

	before_filter :confirm_logged_in, :except => [:new, :create]

	def list
		@users = User.all
	end

	def show
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "You have signed up!"
			redirect_to(:controller => 'access', :action => 'login')
		else
			render('new')
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:notice] = "Your information has been updated!"
			redirect_to(:controller => 'access', :action => 'login')
		else
			render('edit')
		end
	end

	def delete
		@user = User.find(params[:id])
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:notice] = "Your account has been deleted!"
		redirect_to(:controller => 'access', :action => 'login')
	end
end
