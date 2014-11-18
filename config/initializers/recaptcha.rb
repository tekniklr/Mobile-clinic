# http://lowcostspayneuterclinicflagstaff.org
Recaptcha.configure do |config|
  config.public_key  = (Rails.env.test? || Rails.env.development?) ? "recaptcha_this" : ENV['RECAPTCHA_PUBLIC']
  config.private_key = (Rails.env.test? || Rails.env.development?) ? "recaptcha_this_secretly" : ENV['RECAPTCHA_PRIVATE']
end