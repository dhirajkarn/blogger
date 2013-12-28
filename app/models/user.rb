class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :username, :password, :password_confirmation

  has_many :blogs

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  # validates_presence_of :first_name, :last_name, :email, :username, :password
  # validates_length_of :username, :within => 3..15
  # validates_length_of :password, :within => 3..15
  # validates_uniqueness_of :username, :email
  # validates_format_of :email, :with => EMAIL_REGEX
  # validates_confirmation_of :password

  # Sexy validations
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :username, :presence => true, :length => { :within => 3..15 }, :uniqueness => true
  validates :email, :presence => true, :format => EMAIL_REGEX
  validates :password, :presence => true, :length => { :within => 3..15 }, :confirmation => true

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
