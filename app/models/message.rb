class Message < ApplicationRecord
  belongs_to :user

  validates :body, presence: true

  after_create_commit :broadcast_message

  private

  def broadcast_message
    MessageBroadcastJob.perform_later(self)
  end

end


#class Message < ApplicationRecord
#	belongs_to :user
 # after_create_commit { MessageBroadcastJob.perform_later self }
#end
  


