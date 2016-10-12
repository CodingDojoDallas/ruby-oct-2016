class User < ActiveRecord::Base
	has_many :owners, :posts, :messages, dependent: :destroy
	has_many :blogs, through: :owners
end
