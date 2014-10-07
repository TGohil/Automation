require 'watir'

browser = Watir::Browser.new :firefox

browser.goto "http://amazon.co.uk"

search = browser.text_field(:title, "Search For").set "Eloquent Ruby"

browser.button(:title, "Go").click

browser.link(:text, /^Eloquent Ruby/).when_present.click

