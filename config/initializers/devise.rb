Devise.setup do |config|
  
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email, :name]
  config.strip_whitespace_keys = [:email, :name]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true

  # config.confirmation_keys = [:email]
  config.authentication_keys = [:name]

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 8..72

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

end
