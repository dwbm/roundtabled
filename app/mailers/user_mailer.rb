class UserMailer < ActionMailer::Base
  default :from => "getorganized@roundtabled.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.email}", :subject => "bringing everything to the table with RoundTabled")
  end
  
  def registration_inform(user)
	@user = user
	mail(:to => "getorganized@roundtabled.com", :subject => "New Registration: #{user.email}")
  end
end