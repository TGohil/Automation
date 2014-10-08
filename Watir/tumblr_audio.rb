
require 'watir'

browser = Watir::Browser.new :firefox
browser.goto "http://tumblr.com/login"

browser.text_field(:id, "signup_email").set "tgohil@testingcircle.com"
browser.text_field(:id, "signup_password").set "abcd1234"
browser.button(:id, "signup_forms_submit").click
browser.a(:id, "new_post_label_audio").click

browser.a(:id, "tab_audio_external").click
browser.text_field(:id, "post_three").send_keys("https://soundcloud.com/elizabethsilv/ruby-kaiser-chiefs")
browser.button(:class, "create_post_button chrome blue txt ").click

browser.a(:class, "post_info_link post_source_link").wait_until_present

puts "SUCCESS" if browser.a(:class, "post_info_link post_source_link").text.include? "SoundCloud / elizabethsilv"

browser.close