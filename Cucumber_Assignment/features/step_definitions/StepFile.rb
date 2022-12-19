require 'rubygems'
require 'selenium-webdriver' 

service = Selenium::WebDriver::Service.chrome(path:'/Users/prity/Downloads/chromedriver 3')
@driver = Selenium::WebDriver.for :chrome, service: service



caps = Selenium::WebDriver::Remote::Capabilities.new
caps['browser'] = 'Chrome'
caps['browser_version'] = '104.0'
caps['os'] = 'OS X'
caps['os_version'] = 'Ventura'
caps['resolution'] = '1280x1024'
#caps["browserstack.idleTimeout"] = "30"

 $username = "prityukey_tqBjLN"
 $access_key = "4EwiwYPYgxDjZyMmRrNM"

Given('user on amazon site') do
    @driver = Selenium::WebDriver.for(:remote,:url => "http://#{$username}:#{$access_key}@hub-cloud.browserstack.com/wd/hub",
        :desired_capabilities => caps)
      @driver.get "https://www.amazon.in"
      browser_title = @driver.title #just a test
      sleep(30)

end 

When('user enters the search')  do
sleep(30)
@driver.find_element(:xpath, '//*[@id="twotabsearchtextbox"]').send_keys(mobiles) #locator for search
   
end
  
When('hit enter') do
    @driver.find_element(:xpath, '//*[@id="nav-search-submit-button"]').click
end
  
Then('user navigates to search result page') do 
    #wait = Selenium::WebDriver::Wait.new(timeouts:10)

    browser_title = @driver.title
   if (browser_title).include? "mobile"
    p " correct result"
end

end


