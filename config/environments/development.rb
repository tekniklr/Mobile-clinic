MobileClinic::Application.configure do
  
  config.eager_load = false

  config.cache_classes = false

  config.active_record.raise_in_transactional_callbacks = true

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Do not compress assets
  config.assets.compress = false

  config.assets.debug = false
  
  config.logger = Logger.new(Rails.root.join("log",Rails.env + ".log"),1,5*1024*1024)
end
