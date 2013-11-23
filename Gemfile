source 'https://rubygems.org'

gem 'rails', '3.2.15'
gem 'pg'

gem 'heroku'
gem 'thin'

# better html
gem 'haml'

gem "ckeditor"
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
  gem 'minitest', '~> 4', :require => false
end

group :production do
  gem 'exception_notification', '<4.0'
  # gem 'therubyracer'
end

# prevent console errors
group :development do
  gem 'taps', :require => false # has an sqlite dependency, which heroku hates
  gem "awesome_print"
  gem "pry-rails"
end