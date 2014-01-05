class UserMailer < ActionMailer::Base
  default from: "notification@blogger.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/access/login'
    mail(to: @user.email, subject: 'Welcome to Blogger')
  end
end
