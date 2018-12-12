class ChatController < ApplicationController
  def show
  	    @messages = Message.all

  end
end
