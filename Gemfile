# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.0"
gem "rails", "~> 5.2.1"
gem "pg", ">= 0.18", "< 2.0"

gem "bootsnap", ">= 1.1.0", require: false
gem "geocoder"
gem "haml-rails"
gem "interactor-rails"
gem "oj", "~> 3"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "turbolinks"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "dotenv-rails"
  gem "pry"
  gem "rubocop-rails_config"
end

group :development do
  gem "brakeman"
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "letter_opener"
end

group :test do
  gem "capybara", ">= 2.15", "< 4.0"
  gem "capybara-selenium"
  gem "chromedriver-helper"
  gem "json_matchers"
  gem "mocha"
  gem "selenium-webdriver"
  gem "simplecov", require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
