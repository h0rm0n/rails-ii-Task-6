class CommentsController < ApplicationController
	def new
		@comment = Comment.new
   end

   def create
      post = Post.find(params[:post_id])
      post.comments.create(params[:comment])
      redirect_to post
   end	
end
