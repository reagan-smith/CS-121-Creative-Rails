class User < ApplicationRecord
	# convert username to lowercase before saving
	before_save { self.username = username.downcase }
	# make sure the name and email fields 
	# are filled in correctly
	validates :username, presence: true, uniqueness: { case_sensitive: false }
	# regular expression detailing the correct format for an email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX }

	has_secure_password
	# require password be at least length 6
	validates :password, presence:true, length: { minimum: 6 }

end
