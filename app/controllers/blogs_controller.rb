class BlogsController < ApplicationController

	before_filter :confirm_logged_in, :except => [:index, :list, :show]
	#before_filter :find_current_user

	def index
		@blog = Blog.last
		@comments = Comment.where(:blog_id => @blog.id)
		@user = User.find(@blog.user_id)
	end

	def list
		if(params[:sel_month])
			date = params[:sel_month].split(" ")  # in split one space is there
			month = Date::MONTHNAMES.index(date[0].capitalize)
			year = date[1].to_i
			@blogs = Blog.where('extract(year from created_at) = ? and extract(month from created_at) = ?', year, month).paginate(:page => params[:page], :per_page => 5, :order => 'created_at DESC')

			# @blogs = Blog.where("DATE_FORMAT(created_at, '%M %Y') = ?", params[:sel_month]).paginate(:page => params[:page], :per_page => 5, :order => 'created_at DESC')
			
			@sel_month = params[:sel_month]
		else
			@blogs = Blog.paginate(:page => params[:page], :per_page => 5, :order => 'created_at DESC')
		end
		
	end

	def show
		if(params[:id])
			@blog = Blog.find(params[:id])
		else
			@blog = Blog.last
		end
		@comments = Comment.where(:blog_id => @blog.id)
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
		
	end

	def destroy
		Blog.find(params[:id]).destroy
		flash[:notice] = "Your blog has been deleted!"
		redirect_to(:controller => 'users', :action => 'show', :id => session[:user_id])
	end

	

	private
	
end
