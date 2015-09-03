class ApplicationMailer < ActionMailer::Base
  default from: "noreply@yourdomain.com"
  layout 'mailer'
end
