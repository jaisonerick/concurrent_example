source "https://rubygems.org"

ruby "2.3.0"

gem 'rollbar'
gem "email_validator"
gem "i18n-tasks"
gem "autoprefixer-rails"
gem "bourbon", "~> 4.2.0"
gem "flutie"
gem "jquery-rails"
gem "normalize-rails", "~> 3.0.0"


gem 'mysql2', '~> 0.3.20'

gem "puma"
gem "rails", "~> 4.2.0"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "title"
gem "uglifier"
gem "jbuilder"
gem "yajl-ruby", require: "yajl"
gem "sidekiq"
gem "sinatra", require: nil
gem "redis-rails"
gem "dalli"
gem "lograge"
gem 'newrelic_rpm', '>= 3.9.8'
gem "whenever", require: false
gem "nokogiri", ">= 1.6.7.2"
gem "geocoder"
gem "aws-sdk"
gem "httparty"

group :development do
  gem "quiet_assets"
  gem "letter_opener"
  gem "capistrano", "~> 3.1"
  gem "capistrano-rails", "~> 1.1"
  gem "capistrano-rbenv", "~> 2.0"
  gem 'capistrano3-nginx', '~> 2.0'
  gem 'capistrano-rails-console'
end

group :development, :test do
  gem "pry-meta"
  gem "bullet"
  gem "bundler-audit", require: false
  gem 'dotgpg'
  gem 'dotenv-rails'
  gem "factory_girl_rails"
  gem "ffaker"
  gem "rspec-rails", "~> 3.4.0"
  gem "rubocop", require: false
  gem "brakeman", require: false
end

group :test do
  gem "capybara"
  gem "poltergeist"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
  gem "rspec_api_documentation"
end

group :staging, :production do
  gem "rails_stdout_logging"
end
