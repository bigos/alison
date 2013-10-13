source 'https://rubygems.org'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'


### my gems

gem 'thin'
gem 'will_paginate', '>= 3.0.0'
gem "inherited_resources", "1.3.1"
gem "paperclip", "~> 2.7"
gem 'haml-rails'
gem "authlogic", "~> 3.2.0"
gem "ckeditor"
gem 'rails3-jquery-autocomplete'
    
gem 'jquery_datepicker'
gem "jquery-fileupload-rails"

gem 'nokogiri', '~> 1.5.10'

group :development, :test do
  gem "rspec-rails", ">= 2.0"
  gem 'capybara', '~> 1.1.1'
  gem 'database_cleaner', '0.6.5'
end

group :test do
  gem 'cucumber-rails', '>=1.1.1', :require => false
  gem "factory_girl", "2.6.4"
  gem "factory_girl_rails"

  gem 'action_mailer_cache_delivery', '0.3.2' #remember to patch the gem for old hash syntax :symbol => value
  gem 'email_spec'
end

