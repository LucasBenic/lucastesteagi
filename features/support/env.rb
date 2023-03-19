require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'rspec/expectations'


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://blogdoagi.com.br/'
    config.default_max_wait_time = 10
    Capybara.page.driver.browser.manage.window.maximize
end
