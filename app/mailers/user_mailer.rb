class UserMailer < ActionMailer::Base
  default from: "support@imajine.us"

  def contact_email(contact)
  	@contact = contact 
  	@message = @contact.message
  	@subject = @contact.subject
  	@email = @contact.email
  	@url = "http://www.imajine.us#work"
  	mail(to: @contact.email, subject: "Thanks for contacting Imajine!")
  end
end
