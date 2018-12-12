class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
 
    ActionCable.server.broadcast 'room_channel_#{current_user.id}', message: render_message(message)

  end

  private

  def render_message(message)
    ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
  end
end
