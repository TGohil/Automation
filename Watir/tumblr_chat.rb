
require 'watir'

browser = Watir::Browser.new :firefox
browser.goto "http://tumblr.com/login"

browser.text_field(:id, "signup_email").set "tgohil@testingcircle.com"
browser.text_field(:id, "signup_password").set "abcd1234"
browser.button(:id, "signup_forms_submit").click
browser.a(:id, "new_post_label_chat").click

browser.text_field(:id, "post_one").set "Chat Title"
browser.textarea(:id, "post_two").set "This is a chat"
browser.button(:class, "create_post_button chrome blue txt ").click
browser.div(:class, "post_wrapper").wait_until_present

if browser.div(:class, "post_title").text == "Chat Title"
    puts "SUCCESS"
end

browser.close