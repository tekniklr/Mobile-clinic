source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '~>4.2.0'
gem 'pg'

gem 'heroku'
gem 'thin'

# better html
gem 'haml'

gem "jquery-ui-rails"
gem "ckeditor"
gem "recaptcha", :require => "recaptcha/rails"

# needed for authentication
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'json'

# assets
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'turbo-sprockets-rails3'

gem 'jquery-rails'

group :test do
  gem 'turn', :require => false
  gem 'shoulda', :require => false
  gem 'factory_girl_rails', :require => false
  gem 'minitest', :require => false
end

group :production do
  gem 'exception_notification'
end

# prevent console errors
group :development do
  gem 'taps', :require => false # has an sqlite dependency, which heroku hates
  gem "awesome_print"
  gem "pry-rails"
end