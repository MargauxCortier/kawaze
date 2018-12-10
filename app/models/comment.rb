class Comment < ApplicationRecord
    belongs_to :post

  def set_user!(user)
    self.user_id = user.id

    self.save!
  end
end