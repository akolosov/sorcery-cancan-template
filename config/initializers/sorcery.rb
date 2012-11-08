# Rails.application.config.sorcery.submodules = [:user_activation, :http_basic_auth, :remember_me, :reset_password, :session_timeout, :brute_force_protection, :activity_logging, :external]

Rails.application.config.sorcery.submodules = [:remember_me, :reset_password, :session_timeout, :brute_force_protection, :activity_logging]

Rails.application.config.sorcery.configure do |config|
  
  config.session_timeout = 10.minutes
  config.session_timeout_from_last_action = false
  
#  config.controller_to_realm_map = {"application" => "Application", "users" => "Users"}  # if enabled external providers submodule
  
#  config.external_providers = [:twitter, :facebook] # if enabled external providers submodule
  
#  config.twitter.key = "eYVNBjBDi33aa9GkA3w" # if enabled external providers submodule
#  config.twitter.secret = "XpbeSdCoaKSmQGSeokz5qcUATClRW5u08QWNfv71N8"  # if enabled external providers submodule
#  config.twitter.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=twitter"  # if enabled external providers submodule
#  config.twitter.user_info_mapping = {:email => "screen_name"}  # if enabled external providers submodule
  
#  config.facebook.key = "34cebc81c08a521bc66e212f947d73ec"  # if enabled external providers submodule
#  config.facebook.secret = "5b458d179f61d4f036ee66a497ffbcd0"  # if enabled external providers submodule
#  config.facebook.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=facebook"  # if enabled external providers submodule
#  config.facebook.user_info_mapping = {:email => "name"}  # if enabled external providers submodule
  
  config.user_config do |user|
    user.username_attribute_names                      = [:email, :username, :id]
    user.subclasses_inherit_config                    = true

#    user.user_activation_mailer                       = UserMailer  # if enabled user_activation submodule
#    user.activation_token_attribute_name              = :activation_code  # if enabled user_activation submodule
#    user.activation_token_expires_at_attribute_name   = :activation_code_expires_at  # if enabled user_activation submodule

    user.reset_password_mailer                        = UserMailer
    user.reset_password_expiration_period             = 10.minutes
    user.reset_password_time_between_emails           = nil

    user.activity_timeout                             = 1.minutes

    user.consecutive_login_retries_amount_limit       = 10
    user.login_lock_time_period                       = 2.minutes

#    user.authentications_class                        = UserProvider  # if enabled external providers submodule
  end
  
  config.user_class = User
end
