class User < ApplicationRecord

	has_many :posts, dependent: :destroy
			# dependent: :destroy means the posts related
      # to the specific user in mention get deleted if the user does.
  has_many :comments,  dependent: :destroy
  		# dependent: :destroy means the comments related
      # to the specific user in mention get deleted if the user does.
	has_many :messages, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: :true, uniqueness: { case_sensitive: false }
  validates :is_signed_in, inclusion: [true, false]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :notify_pusher

  after_create :send_welcome_email

  def send_welcome_email
    ContactMailer.welcome_email(self).deliver_later
  end

  def notify_pusher
    Pusher.trigger('activity', 'login', self.as_json)
  end

  def as_json(options={})
    super(
      only: [:id, :email, :username]
    )
  end
end
