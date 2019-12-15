require 'rspec'
require 'capybara'
require 'cucumber'
require 'pry'
require 'yaml'
require 'faker'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
end

RSpec.configure do |conf|
  conf.include Capybara::DSL
  conf.include RSpec::Matchers  
end