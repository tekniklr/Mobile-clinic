# http://lowcostspayneuteraz.org
Recaptcha.configure do |config|
  config.public_key  = Rails.env.test? ? "asdfghjklwertyuiop" : ENV['RECAPTCHA_PUBLIC']
  config.private_key = Rails.env.test? ? "asdfghjklwertyuiop" : ENV['RECAPTCHA_PRIVATE']
end