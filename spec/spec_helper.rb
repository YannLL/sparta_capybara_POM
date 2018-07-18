require 'capybara'
require_relative '../lib/bbc_site.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  # Makes sure that all hidden elements on a page are available
  config.ignore_hidden_elements = false

  config.default_max_wait_time = 10
  # Wait time for asynchronous processes to finish

  config.default_driver = :chrome 
  # ensures default driver is Chrome
end
