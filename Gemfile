# frozen_string_literal: true
source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '5.0.0.1'
gem 'rack'

gem 'puma'

# Use postgresql as the database for Active Record
gem 'pg'
gem 'connection_pool'

# Assets
gem 'sass-rails'

gem 'sprockets-es6'

gem 'jquery-rails'

gem 'uglifier'

gem 'inline_svg'

# Pagination
gem 'kaminari'

# File uploader
gem 'carrierwave'
gem 'mini_magick'

# Authentication & Authorization
gem 'devise'

group :production, :staging do
  # Caching
  gem 'rack-cache'
  gem 'dalli'
  gem 'kgio'

  # Add missed browser specific css rules
  gem 'autoprefixer-rails'

  # Compress results
  gem 'heroku-deflater', github: 'romanbsd/heroku-deflater'

  # timeout Rails request, needed if running on heroku- https://devcenter.heroku.com/articles/request-timeout
  gem 'rack-timeout'
end

group :development do
  gem 'spring'
  gem 'spring-commands-testunit'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # In order to enable faster reloading mode
  gem 'listen'

  gem 'better_errors'

  gem 'xray-rails'
end

group :test do
  gem 'minitest'
  gem 'minitest-reporters', '>= 0.5.0', require: false

  # Integration tests
  gem 'capybara', require: false
  gem 'poltergeist', require: false
  gem 'minitest-capybara', require: false
  gem 'thin', require: false # Run capybara tests on thin server
  gem 'launchy', require: false # to automatically open screenshots
  gem 'rails-controller-testing' # to test proper template rendering

  # Code coverage reports
  gem 'simplecov', require: false
end

source 'https://rails-assets.org' do
  gem 'rails-assets-es5-shim'
  gem 'rails-assets-jquery'
  gem 'rails-assets-jquery-ujs'
  gem 'rails-assets-bootstrap-sass'
  gem 'rails-assets-almond', '<= 0.3.1'
end
