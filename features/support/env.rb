require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require_relative 'page_initialize.rb'
require 'rspec/expectations'
include RSpec::Matchers

World(Page)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automation-sandbox-python-mpywqjbdza-uc.a.run.app/'
    config.default_max_wait_time = 10
end
