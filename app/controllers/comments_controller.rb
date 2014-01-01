class CommentsController < ApplicationController

	# before_filter :confirm_logged_in

	def create
		@blog = Blog.find(params[:blog_id])
		@comment = @blog.comments.new(params[:comment])
		if @comment.save
			flash[:notice] = "Your comment has been created!"
			redirect_to(:controller => "blogs", :action => 'show', :id => @blog.id)
		else
			render('404')
		end
	end

	def show
		
	end
end
