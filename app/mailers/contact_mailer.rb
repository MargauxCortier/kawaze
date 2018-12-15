class ContactMailer < ApplicationMailer
default from: 'kawaze.team@gmail.com'
 
  

	  def welcome_email(user)
    @user = user
    @url  = 'http://kawaze.com'
    mail(to: @user.email, subject: 'Bienvenue sur Kawaze !')
  end

end
