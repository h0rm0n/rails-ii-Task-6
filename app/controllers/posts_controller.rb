class PostsController < ApplicationController
   def index
      @posts = Post.all
   end

   def new
      @post = Post.new
   end

   def show
      @post = Post.find(params[:id])
   end

   def create
      @post = Post.new(params[:post])
      if @post.save
         redirect_to posts_path
      else
         render('posts/index')
      end
   end
end
