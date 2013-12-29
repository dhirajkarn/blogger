class BlogsController < ApplicationController

	before_filter :confirm_logged_in, :except => [:index, :list]
	#before_filter :find_current_user

	def index
		# list
		# render 'list'
		# Fetch the latest blog

		@blog = Blog.last
	end

	def list
		@blogs = Blog.all
	end

	def show
		@blog = Blog.find(params[:id])
		@user = User.find(@blog.user_id)
	end

	def new
		@user = User.find(session[:user_id])
		@blog = @user.blogs.new
	end

	def create
		@user = User.find(params[:user_id])
		@blog = @user.blogs.new(params[:blog])
		if @blog.save
			flash[:notice] = "Your blog has been created!"
			redirect_to(:action => 'show', :id => @blog.id)
		else
			render('new')
		end
	end

	def edit
		# @user = User.find(params[:user_id])
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		# @user = User.find(params[:user_id])
		if (current_user.id == @blog.user_id)
			if @blog.update_attributes(params[:blog])
				flash[:notice] = "Your blog has been updated!"
				redirect_to(:action => 'show', :id => @blog.id)
			else
				render('edit')
			end
		else
			flash[:notice] = "You don't have right to edit this blog!"
			redirect_to(:action => 'edit', :id => @blog.id)
		end
	end

	def delete
		@blog = Blog.find(params[:id])
	end

	def destroy
		Blog.find(params[:id]).destroy
		flash[:notice] = "Your blog has been deleted!"
		redirect_to(:action => 'list')
	end

	private
	
end
