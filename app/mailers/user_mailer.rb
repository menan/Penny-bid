class UserMailer < ActionMailer::Base
  default :from => "welcome@mybid.com"
  
  def welcome_email(user)
    @user = user
    @url  = "http://localhost:3000/user/#{@user.id}/edit"
    mail(:to => @user.email, :subject => "Complete your registration.")
  end
  
end
