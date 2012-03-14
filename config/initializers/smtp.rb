ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => ENV['GMAIL_SMTP_DOMAIN'],
  :user_name            => ENV['GMAIL_SMTP_USER'],
  :password             => ENV['GMAIL_SMTP_PASSWORD'],
  :authentication       => "login",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "e.ha.local:3000"
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
