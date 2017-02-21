class UserNotifierMailer < ApplicationMailer
  default :from => 'showusyourcanada@enterprise.com'

  def send_newsletter(emails)
    @email = emails
    mail( :to => ENV['email_address'] , :subject => 'News Letter SignUp')
  end
end
