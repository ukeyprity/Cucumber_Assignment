require 'rubygems'
require 'selenium-webdriver'
require 'browserstack/local'

BeforeAll do
     caps = Selenium::WebDriver::Remote::Capabilities.new
     caps['os'] = 'Windows'
     caps['os_version'] = '11'
     caps['browser'] = 'Chrome'
     caps['javascriptEnabled'] = 'true'
     caps['browser_version'] = 'latest'
     caps['name'] = 'My first Sample Test'
     caps['build'] = 'Build 1'
     $driver = Selenium::WebDriver.for(:remote,
        :url => "https://prityukey_tqBjLN:4EwiwYPYgxDjZyMmRrNM@hub.browserstack.com/wd/hub",:desired_capabilities => caps)

      
    end 
   
 AfterAll do
     $diver.quit
 end


