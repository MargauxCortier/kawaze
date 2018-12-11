class User < ApplicationRecord
	has_many :posts, dependent: :destroy
			# dependent: :destroy means the posts related
      # to the specific user in mention get deleted if the user does.
  has_many :comments,  dependent: :destroy
  		# dependent: :destroy means the comments related
      # to the specific user in mention get deleted if the user does.

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
