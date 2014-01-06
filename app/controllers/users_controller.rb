class UsersController < ApplicationController

	before_filter :confirm_logged_in, :except => [:new, :create, :show]

	def list
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@user_blogs = @user.blogs
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			UserMailer.welcome_email(@user).deliver
			flash[:notice] = "You have signed up!"
			redirect_to(:action => 'show', :id => @user.id)
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
			redirect_to(:action => 'show', :id => @user.id)
		else
			render('edit')
		end
	end

	def delete
		@user = User.find(params[:id])
	end

	def destroy
		User.find(params[:id]).destroy
		session[:user_id] = nil
		session[:username] = nil
		flash[:notice] = "Your account has been deleted!"
		redirect_to(:controller => 'access', :action => 'login')
	end
end
