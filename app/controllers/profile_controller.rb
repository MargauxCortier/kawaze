class ProfileController < ApplicationController
before_action :only_see_own_page, only: [:edit]
	def show
		@user = User.find(params[:id])
	end

	def edit 
	end


private 
def only_see_own_page
  @user = User.find(params[:id])

  if current_user != @user
    redirect_to root_path, notice: "Sorry, but you are only allowed to view your own profile page."
  end
end
end 
