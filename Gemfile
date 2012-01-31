source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'pg'

# better html
gem 'haml'

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