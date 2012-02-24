source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'pg'

gem 'heroku'
gem 'taps'
gem 'thin'

# better html
gem 'haml'

gem "ckeditor", "3.7.0.rc2"
gem "recaptcha", :require => "recaptcha/rails"

# needed for authentication
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '~> 1.0.4'
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
  # gem 'ruby-debug19', :require => 'ruby-debug'
end