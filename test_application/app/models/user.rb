class User < ActiveRecord::Base
	attr_accessor :password_temp1
  before_save :encrypt_password


  def encrypt_password
    if password.present?
      password_temp1 = BCrypt::Engine.generate_salt
      self.password = BCrypt::Engine.hash_secret(password, password_temp1)
    end
  end

end