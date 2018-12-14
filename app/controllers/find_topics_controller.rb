class FindTopicsController < ApplicationController
  def show
  	@forums = @search.result(distinct: true)
  end
end
