class UserNotifierMailer < ApplicationMailer
  default :from => 'admin@shareyourcanada150.ca'

  def send_newsletter(emails)
    @email = emails
    mail( :to => ENV['email_address'] , :subject => 'News Letter SignUp')
  end
end
