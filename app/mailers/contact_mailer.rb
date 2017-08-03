class ContactMailer < ApplicationMailer 
  def welcome(username, email, subject, message)
    @message  = message
    @name = username
    @email = email
    mail(to: 'kmiller@kmthub.com', subject: "You've received a new message!")
  end
end
