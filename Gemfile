source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'pg'

gem 'heroku'
gem 'thin'

# better html
gem 'haml'

gem "ckeditor", "3.7.0.rc3"
gem "recaptcha", :require => "recaptcha/rails"

# needed for authentication
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'

group :test do
  gem 'turn', :require => false
  gem 'shoulda', :require => false
  gem 'factory_girl_rails', :require => false
  gem 'minitest', :require => false
end

group :production do
  gem 'exception_notification'
  # gem 'therubyracer'
end

# prevent console errors
group :development do
  gem "wirble", :require => false
  gem "hirb", :require => false
  gem "awesome_print", :require => false
  gem "looksee", :require => false
  gem 'taps', :require => false # has an sqlite dependency, which heroku hates
  # gem 'ruby-debug19', :require => 'ruby-debug'
end