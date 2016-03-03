source 'https://rubygems.org'

#ruby '2.1.5'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

gem 'coffee-script-source', '1.8.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# gem 'rails_12factor', group: :production
gem 'will_paginate', '~> 3.0.6'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise'
# Use unicorn as the app server
# gem 'unicorn'
gem 'cancancan'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem "factory_girl_rails", "~> 4.0"
# Use debugger
# gem 'debugger', group: [:development, :test]
gem 'guard-rspec', require: false
gem 'spork-rails' 
#Connecting Guard & Spork
gem 'guard-spork'
gem 'sqlite3'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]
#payment gem
gem 'stripe'

group :production do
	gem 'rails_12factor'
	gem 'pg'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end

group :development do
  gem 'guard'
  gem 'sqlite3'
end

gem 'wdm', '>= 0.1.0' if Gem.win_platform?
