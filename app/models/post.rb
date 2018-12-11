class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
      # dependent: :destroy means the comments related
      # to the specific post in mention get deleted if the post does.
    belongs_to :forum

  def set_user!(user)
    self.user_id = user.id

    self.save!
  end
end