class RoomsController < ApplicationController

	respond_to? :html, :js
  
  def show
  	@messages = Message.all	
  end

  def reload_bottom
  	
  end

end
