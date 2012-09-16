ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "eboxbrasil.com.br",
  :user_name            => "Erlon",
  :password             => "123456",
  :authentication       => "plain",
  :enable_starttls_auto => true
}