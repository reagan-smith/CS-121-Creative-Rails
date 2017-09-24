class PostsController < ApplicationController
	before_action :find_post, only: [:edit, :update, :show, :delete]

	def index
		@posts = Post.all.order("updated_at DESC")
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			flash[:notice] = "Succesfully created post!"
			redirect_to post_path(@post)
		else
			flash[:alert] = "Error creating new post"
			render :new
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(post_params)
			flash[:notice] = "Succesfully updated!"
			redirect_to about_path
		else
			flash[:alert] = "Error updating post"
			render :edit
		end
	end

	def show
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			flash[:notice] = "Succesfully deleted post!"
			redirect_to posts_path
		else
			flash[:alert] = "Error updating post"
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end

	def find_post
		@post = Post.find(params[:id])
	end
	
end
