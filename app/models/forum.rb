class Forum < ApplicationRecord
	has_many :posts, dependent: :destroy
	belongs_to :category
			# dependent: :destroy means the posts related
      # to the specific forum in mention get deleted if the forum does.

  def set_user!(user)
    self.user_id = user.id

    self.save!
  end
end
