ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "mohhaiti.org",
  :user_name            => "noreply@mohhaiti.org",
  :password             => "MOHHaiti1",
#:user_name            => "noreply@mohhaiti.org",
#:password             => "M0HnoreplyBOT",
  :authentication       => "plain",
  :enable_starttls_auto => true
}