ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all
end

Capybara.register_driver :headless_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(args: %w[no-sandbox headless disable-gpu window-size=1400,900])
  options.driver_path = "/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end
Capybara.save_path = Rails.root.join('tmp/capybara')
Capybara.javascript_driver = :headless_chrome
