class UserMailer < ApplicationMailer
  default from: 'from@example.com'
  
  def welcome(user)
    @user = user
    @url  = 'http://example.com/session/new'
    mail(to: user.username, subject: 'Welcome to 99 cats')
  end

end
