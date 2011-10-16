class UserMailer < ActionMailer::Base
  default :from => "welcome@mybid.com"
  
  def welcome_email(user)
    @user = user
    @url  = "#{Rails.root}/users/#{@user.id}/complete"
    mail(:to => @user.email, :subject => "Complete your registration.")
  end
  
end
