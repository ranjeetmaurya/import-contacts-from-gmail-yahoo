class Contact < ActionMailer::Base
  
  default from: "app5446642@heroku.com"

  def send_invitation(email)
  	@email = email
    @subject = "Invitation from Company"
    mail(:to => @email,:subject => @subject)
  end

end
