require 'capybara/dsl'

include Capybara::DSL
Capybara.default_driver = :selenium

visit "http://tumblr.com"
click_on "Log in"

fill_in("Email", :with => "tgohil@testingcircle.com")
fill_in("Password", :with => "abcd1234")
click_on "Log in"

click_on "new_post_label_chat"

fill_in("Title", :with => "This is the title")
fill_in("post_two", :with => "This is a chat post")

click_on "Post"