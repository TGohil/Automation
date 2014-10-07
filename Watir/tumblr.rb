require 'watir'

browser = Watir::Browser.new :firefox
browser.goto "http://tumblr.com/login"

browser.text_field(:id, "signup_email").set "tgohil@testingcircle.com"
browser.text_field(:id, "signup_password").set "abcd1234"
browser.button(:id, "signup_forms_submit").click

browser.element(:id, "new_post_label_text").click
browser.send_keys("This is a test post")
browser.text_field(:name, "post[one]").set("Test Post Watir")

browser.div(:id, "create_post").click
browser.div(:class, "post_wrapper").wait_until_present

if browser.div(:class, "post_title").text == "Test Post Watir"
    puts "Success!"
end

browser.close