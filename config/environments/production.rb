MobileClinic::Application.configure do

  config.eager_load = true

  config.log_level = :info

  config.active_record.raise_in_transactional_callbacks = true

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local        = false
  config.action_controller.perform_caching  = true
  config.action_view.cache_template_loading = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_files = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

  # Compress both stylesheets and JavaScripts
  config.assets.js_compressor  = :uglifier

  # Use a different logger for distributed setups
  config.logger = Logger.new(STDOUT)

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  config.assets.precompile += %w( modernizr-1.7.min.js ckeditor/* )

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
  
  MobileClinic::Application.config.middleware.use ExceptionNotification::Rack,
  :ignore_exceptions => ['ActionController::BadRequest'] + ExceptionNotifier.ignored_exceptions,
  :email => {
    :email_prefix => "[spay/neuter clinic] ",
    :sender_address => %{tsolow@tekniklr.com},
    :exception_recipients => %w{tsolow@tekniklr.com drtsheltervet@gmail.com}
  }
    
  # set up email
  config.action_mailer.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => 'lowcostspayneuteraz.org',
    :user_name            => ENV['GMAIL_SMTP_USER'],
    :password             => ENV['GMAIL_SMTP_PASSWORD'],
    :authentication       => 'plain',
    :enable_starttls_auto => true
  }
  config.action_mailer.default_url_options = { :host => 'spayneuterclinic.heroku.com' }
  config.action_mailer.raise_delivery_errors = true
end
