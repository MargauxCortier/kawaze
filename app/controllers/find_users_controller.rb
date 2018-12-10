class FindUsersController < ApplicationController
  def show
  @q = User.ransack(params[:q])
  @people = @q.result(distinct: true)
  end


  
end




