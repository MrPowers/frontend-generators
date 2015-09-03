class ContactMailer < ApplicationMailer
  # Change to whichever email you wish to receive contact requests.
  default to: "admin@yourdomain.com"

  def contact(name, email, phone, message)
  	@name = name
  	@email = email
  	@phone = phone
  	@message = message

  	mail subject: 'Website Contact Form'
  end
end
