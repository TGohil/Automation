require 'capybara/dsl'

include Capybara::DSL
Capybara.default_driver = :selenium

visit "http://tumblr.com"
click_on "Log in"

fill_in("Email", :with => "tgohil@testingcircle.com")
fill_in("Password", :with => "abcd1234")
click_on "Log in"

click_on "new_post_label_text"

fill_in("post_one", :with => "Test Post")

click_on "Post"