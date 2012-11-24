source 'http://rubygems.org'

gem 'rails', '3.1.3'
gem 'json'
gem 'jquery-rails'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-identity'
gem 'kaminari'
gem 'twitter'
gem 'linkscape'
gem 'nokogiri'
gem 'heroku'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  	gem 'sass-rails',   '~> 3.1.5'
  	gem 'coffee-rails', '~> 3.1.1'
  	gem 'uglifier', '>= 1.0.3'
	gem 'twitter-bootstrap-rails'
end

group :development, :test do
        gem 'sqlite3'
        gem 'sqlite3-ruby'
# Removed debugger to be able to use ruby 1.9.2 because debugger requires linecache which was not working
# 	gem 'ruby-debug'
end

group :production do
        gem 'pg'
        gem 'thin'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'
