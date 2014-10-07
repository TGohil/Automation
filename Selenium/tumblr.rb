require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
    
browser.get "http://tumblr.com/login"
    
browser.find_element(id: "signup_email").send_keys "tgohil@testingcircle.com"
    
browser.find_element(id: "signup_password").send_keys "abcd1234"
    
browser.find_element(id: "signup_forms_submit").click

browser.find_element(class: "new_post_label_text").click

wait = Selenium::WebDriver::Wait.new(timeout: 10)
#sleep(3.0)
wait.until{browser.find_element(id: "post_one")}
    
browser.find_element(id: "post_one").send_keys("Test Post")
    
post = browser.find_element(id: "post_two_ifr").send_keys("This is a test post")

browser.find_element(id: "create_post").click
    
sleep(3.0)

if browser.find_element(class: "post_title").text == "Test Post"
    puts "Success!"
end
