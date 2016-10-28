class User < ActiveRecord::Base
has_many :projects, through: :user_projects
	PASSWORD_FORMAT = /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/
	validates :first_name,  presence: true
	validates :last_name,  presence: true
	validates :email,  presence: { message: "must be given please" }
	validates_uniqueness_of :email

validates :password,  presence: true,   format: {with: PASSWORD_FORMAT},   confirmation: true,   on: :create 


	

	has_secure_password

	


end
