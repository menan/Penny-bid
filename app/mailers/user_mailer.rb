class UserMailer < ActionMailer::Base
  default :from => "welcome@mybid.com"
  
  def welcome_email(user)
    @user = user
    @url  = "http://pennybid.heroku.com/users/#{@user.id}/complete"
    mail(:to => @user.email, :subject => "Complete your registration.")
  end
  
end
