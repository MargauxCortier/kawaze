class DisslikesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_post
	before_action :find_disslike, only: [:destroy]

	def create
		if already_dissliked?
			flash[:notice] = "You can't disslike more than once"
		else
			@post.disslikes.create(user_id: current_user.id)
		end
		redirect_to category_forum_path(@category, @forum)
	end

	def destroy
		if !(already_dissliked?)
			flash[:notice] = "Cannot undisslike"
		else
			@disslike.destroy
		end
		redirect_to category_forum_path(@category, @forum)
	end

	private

	def already_dissliked?
		Disslike.where(user_id: current_user.id, post_id:
			params[:post_id]).exists?
	end

	def find_disslike
		@disslike = @post.disslikes.find(params[:id])
	end

	def find_post
		@category = Category.find(params[:category_id])
		@forum = @category.forums.find(params[:forum_id])
		@post = @forum.posts.find(params[:post_id])
	end
end