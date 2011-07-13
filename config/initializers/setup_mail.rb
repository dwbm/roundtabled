ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "roundtabled.com",
  :user_name            => "getorganized@roundtabled.com",
  :password             => "freelancel0t",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "roundtabled.com"
