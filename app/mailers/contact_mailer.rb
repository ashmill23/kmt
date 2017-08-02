class ContactMailer < ApplicationMailer 
  def welcome(username, email, subject, message)
    @message  = message
    @name = username
    @email = email
    mail(to: 'ashleyvdp@gmail.com', subject: subject)
  end
end
