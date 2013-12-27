class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :username, :password

  has_many :blogs

  def name
  	"#{first_name} #{last_name}"
  end

  def self.authenticate(username="", password="")
  	user = User.find_by_username(username)
  	if user && user.password_match?(password)
  		return user
  	else
  		return false
  	end
  end

  def password_match?(input_password="")
  	password == input_password
  end
end
