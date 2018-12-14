class Category < ApplicationRecord
	has_many :forums, dependent: :destroy
end
