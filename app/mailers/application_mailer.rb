# class ApplicationMailer < ActionMailer::Base
#   default from: "sonyacorcoran@gmail.com"
#   layout 'mailer'

#   def send_email(message)
#     # Get message value from form
#     @message = {:to => "sonyacorcoran@gmail.com"}
#     mail(to: @message[:to], subject: 'Mailgun message via SMTP')

#     # Check if SMTP
#     if @message[:mode] == "SMTP"

#       # Tell notifier action mailer to send via SMTP
#       Notifier.send_email(@message).deliver
#     end
#   end
# end
