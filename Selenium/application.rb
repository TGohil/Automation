require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
    
browser.get "http://amazon.co.uk"

    
select = browser.find_element id: "twotabsearchtextbox"
    
select.send_keys "Eloquent Ruby"
    


go = browser.find_element class: "nav-submit-input"

go.click
    
    
vis = browser.find_element css: "h3 > a"

vis.click
    
price = browser.find_element class: "a-color-price"

price.text[1..5]
    
    
    
#    
#results = browser.find_element(ud: 'atfResults').find_elements(css: "[id^=results]")
#    
#    
#results.each_with_index do |results, i|
#    puts "Result #(i+1); " + result.find_element(css: '.newaps span').text
#    
#results[0].find_element(css: '.newaps span').click