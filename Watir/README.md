#Watir Cheat Sheet

##Browser

####start new driver session
```ruby
browser = Watir::Browser.new :firefox
browser = Watir::Browser.new :chrome
browser = Watir::Browser.new :ie
```
 
####goto url
```ruby
browser.goto "http://3Qilabs.com"
```

####refresh
```ruby
browser.refresh
```

####close
```ruby
browser.quit
```

##Textbox

####enter value
```ruby
browser.text_field(:id => "text").set "watir-webdriver"
```

####get value
```ruby
browser.text_field(:id => "text").value
```

####clear
```ruby
browser.text_field(:id => "text").clear
```

##Button

####is enabled?
```ruby
browser.button(:id => "btn").enabled?
```

####button's text
```ruby
browser.button(:id => "btn").text
```

####click
```ruby
browser.button(:id => "btn").click
```

##Checkbox

####check
```ruby
browser.checkbox(:id => "btn").set
browser.checkbox(:id => "btn").set(true)
```

####uncheck
```ruby
browser.checkbox(:id => "btn").clear
browser.checkbox(:id => "btn").set(false)
``` 
####is checked?
```ruby
browser.checkbox(:id => "btn").set?
```

##Listbox

####select from list text
```ruby
browser.select_list(:id => "list").select "var"
```

####select using value
```ruby
browser.select_list(:id => "list").select_value "var2"
```

####value is selected?
```ruby
browser.select_list(:id => "list").selected?("var2")
```

####get value
```ruby
puts browser.select_list(:id => "list").value
```

####get all items
```ruby
browser.select_list(:id => "list").options.each do |i|
  puts "#{i.text}"
end
```

##Radio

####select value
```ruby
browser.radio(:id => "radio").set
```

####is var selected?
```ruby
browser.radio(:id => "radio").set?
```

##Image

####is image loaded?
```ruby
browser.image(:src => "img.gif").loaded?
```

####height
```ruby
browser.image(:src => "img.gif").height
```

####width
```ruby
browser.image(:src => "img.gif").width
```

####click
```ruby
browser.image(:src => "img.gif").click
```

####click 1st image
```ruby
browser.images[0].click
```

##Div

####get text
```ruby
browser.div(:class => "body").text
``` 
####get text of 2nd div when it appears
```ruby
browser.divs[1].when_present.text
```

##Table

####row 1, col 1
```ruby
browser.table(:id => "table")[0][0].text
```

####row 1, col 2 (alternate)
```ruby
browser.table(:id => "table").tr{0}.cell{1}.text
```

####row 2 - entire text
```ruby
puts browser.table(:id => "table")[1].text
```

####click row #4
```ruby
puts browser.table(:id => "table")[3].click
```

####get column count
```ruby
browser.table(:id => "table").row.cells.length
```

####row count
```ruby
browser.table(:id => "table").row_count
browser.table(:id => "table").rows.length
```

##General

####[exists?]
```ruby
browser.text_field(:id => "text").exists?
```

####[enabled?]
```ruby
browser.select_list(:id => "list").enabled?
```

####[present?]
```ruby
browser.element(:id => "e").present?
```

####[tag_name]
```ruby
browser.element(:id => "e").tag_name
```

####[screenshot]
```ruby
browser.screenshot.save "c:\\page.png"
```

####[to_subtype] # returns button
```ruby
browser.element(:id => "btn").to_subtype 
```

####[index] click 2nd image on page
```ruby
browser.image(:index => 1).click
```

##[loops]

####get names of all text-fields
```ruby
browser.text_fields.each do |i|
  puts i.name
end
```

####get name of first text-field
```ruby
puts browser.text_fields[0].name
```

####get name of second text-field
```ruby
puts browser.text_fields[1].name
```

##Waiting

####[wait_until_present]
```ruby
browser.button(:id => "btn").when_until_present
```

####[when_present]
```ruby
browser.button(:id => "btn").when_present.click
browser.button(:id => "btn").when_present(10).click
```

####[wait_while_present]
```ruby
browser.button(:value => "submit").click
browser.button(:value => "submit").wait_while_present
```

####[implicit wait] 5 seconds
####good to have, but don't recommend its global use
```ruby
browser.driver.manage.timeouts.implicit_wait = 5
```