require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
# require 'capybara/rspec'
# require 'webdrivers/chromedriver'

# DEFAULT for capybara
# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end

# HEADLESS with crome on ubuntu
# Capybara.register_driver :chrome do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome,
# options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu]))
# end

# without JS
Capybara.default_driver = :headless_chrome
Capybara.javascript_driver = :headless_chrome

# ActiveRecord
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  # ActiveRecord or fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # clean setup after transaction
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  # re-build db when start test suit
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  # db clean
  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.include Capybara::DSL
end
