
# require 'yaml'
# require 'rspec'
# require 'selenium-cucumber'
require 'browserstack/local'
require 'selenium-webdriver'


Before do
    service = Selenium::WebDriver::Service.chrome(path:'/Users/prity/Downloads/chromedriver 3')
    @driver = Selenium::WebDriver.for :chrome, service: service
    #@driver.manage.timeouts.implicit_wait = 60
end 
