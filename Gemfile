source 'http://rubygems.org'

gem 'rails', '3.1.3'

gem 'pg'
gem 'thin'
gem 'haml'
gem 'devise'
gem 'gabba'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
end

group :development do
  gem 'foreman'
end

group :development, :test do
  gem 'awesome_print'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'rb-fsevent', :require => false #if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
end