ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => ENV['GMAIL_SMTP_DOMAIN'],
  :user_name            => ENV['GMAIL_SMTP_USER'],
  :password             => ENV['GMAIL_SMTP_PASSWORD'],
  :authentication       => "login",
  :enable_starttls_auto => true
}

mail_server_config_file = File.join(Rails.root, "config", "smtp.yml")
mail_server_config = YAML.load File.open(mail_server_config_file)

current_environment = ENV['RAILS_ENV'] || "development"
environment_mail_server_config = mail_server_config[current_environment]

Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
ActionMailer::Base.default_url_options[:host] = environment_mail_server_config['host']