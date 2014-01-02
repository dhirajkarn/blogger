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

	def destroy
		comment = Comment.find(params[:id])
		@blog = Blog.find(comment.blog_id)
		comment.destroy
		flash[:notice] = "Your comment has been deleted!"
		redirect_to(:controller => 'blogs', :action => 'show', :id => @blog.id)
		
	end

	# def create
	# 	@blog = Blog.find(params[:blog_id])
	# 	@comment = @blog.comments.new(params[:comment])
	# 	if @comment.save
	# 	  format.html { redirect_to @comment, notice: 'User was successfully created.' }
	#       format.js   {}
	#       format.json { render json: @comment, status: :created, location: @comment }
	#     else
	#       format.html { render action: "new" }
	#       format.json { render json: @comment.errors, status: :unprocessable_entity }
	#     end
	# end
end
