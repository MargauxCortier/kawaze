class RoomsController < ApplicationController
  def show
  	@messages = Message.all
  	
  end

  def reload_bottom
    @message = Message.find(params[:id])
    if @message.user == current_user && @message.rented == false
      @message.toggle(:available)
      @message.save
    end
    @message
  end

end
