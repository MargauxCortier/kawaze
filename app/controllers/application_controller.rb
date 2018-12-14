class ApplicationController < ActionController::Base

before_action :rans

def rans
  @search = Forum.ransack(params[:q])
  @forums = @search.result(distinct: true)
end 

end
