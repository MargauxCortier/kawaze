class HomeController < ApplicationController
	
	def index
		@posts = Post.all.order('created_at DESC')
		@categories = Category.all
	end

	def new_account_04
		@user = current_user
	end

	def new_topic_03
	end

	def topic_02
	end

end
