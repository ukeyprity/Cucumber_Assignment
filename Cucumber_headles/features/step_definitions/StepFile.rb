require 'rubygems'
#require 'browserstack/local'
#require 'selenium-webdriver'

 Given(/^user  on Flipkart home page$/) do
   sleep(5)
   element = $driver.find_element(css: "._2KpZ6l._2doB4z")
   element.click
 end

 When(/^user search for ([^"]*)$/) do |search_term|
   element = $driver.find_element(name: "q")
   element.send_keys(search_term)
   element.click
 end

 And(/^user submit$/) do
   
   $driver.find_element(css: ".L0Z3Pu").click
   sleep(2)
 end


 Then (/^user verify ([^"]*)$/) do |given_title|
   
   sleep(5)
   elements = $driver.find_elements(css: "._4rR01T")
   elements.each do |i|
     puts i.text()
   end
   $driver.quit
 end
 
