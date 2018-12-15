class LikesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_post
	before_action :find_like, only: [:destroy]

	def create
		if already_liked?
			flash[:notice] = "You can't like more than once"
		else
			@post.likes.create(user_id: current_user.id)
		end
		redirect_to category_forum_path(@category, @forum)
	end

	def destroy
		if !(already_liked?)
			flash[:notice] = "Cannot unlike"
		else
			@like.destroy
		end
		redirect_to category_forum_path(@category, @forum)
	end

	private

	def find_post
		@category = Category.find(params[:category_id])
		@forum = @category.forums.find(params[:forum_id])
		@post = @forum.posts.find(params[:post_id])
	end

	def find_like
		@like = @post.likes.find(params[:id])
	end

	def already_liked?
		Like.where(user_id: current_user.id, post_id:
			params[:post_id]).exists?
	end
end