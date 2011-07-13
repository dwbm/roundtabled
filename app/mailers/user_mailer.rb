class UserMailer < ActionMailer::Base
  default :from => "getorganized@roundtabled.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.email}", :subject => "bringing everything to the table with RoundTabled")
  end
end