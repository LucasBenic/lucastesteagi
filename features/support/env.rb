require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'rspec/expectations'
require 'site_prism'



Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://blogdoagi.com.br/'
    config.default_max_wait_time = 10
    Capybara.page.driver.browser.manage.window.maximize
end


  # salva print de falha em execucao
  After do |scenario|
    if scenario.failed?
      # Save a screenshot of the page
      screenshot = "#{scenario.name.gsub(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}.png"
      screenshot_path = File.join(Dir.pwd, 'screenshots', screenshot)
      page.save_screenshot(screenshot_path)
      embed(screenshot_path, 'image/png', 'SCREENSHOT')

  end
end