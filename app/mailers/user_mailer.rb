class UserMailer < ApplicationMailer

  default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = User.last
    @url  = 'http://kuldeep.qwinix.io/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
