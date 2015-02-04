source 'https://rubygems.org'
ruby "2.1.5"

gem 'rails', '~>4.2.0'
gem 'pg'

gem 'heroku'
gem 'thin'

# better html
gem 'haml'

gem "jquery-ui-rails"
gem "ckeditor"
gem 'responders', '~> 2.0' # apparently the ckeditor gem uses respond_to
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

gem 'jquery-rails'

group :test do
  gem 'turn', :require => false
  gem 'shoulda', :require => false
  gem 'factory_girl_rails', :require => false
  gem 'minitest', :require => false
end

group :production do
  gem 'exception_notification'
  gem 'rails_12factor'
end

# prevent console errors
group :development do
  gem 'taps', :require => false # has an sqlite dependency, which heroku hates
  gem "awesome_print"
  gem "pry-rails"
end