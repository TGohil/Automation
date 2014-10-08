require 'capybara'
require 'capybara/DSL'

Capybara.default_driver = :selenium

module MyModule
    include Capybara::DSL
    
    visit 'http://
    
    def login!
        within("form[@id='session']") do
            fill_in 'Email', :with => 'user@example.com'
            fill_in 'URL', :with => 'http://testingcircle.com'
            fill_in('Password', :with => 'John')
            fill_in('Email', :with => 'user@example.com')
            fil_in('Date', :with => 'Realy Long Text...')
            choose('A Radio Button')
            check('A checkbox')
            uncheck('A Checkbox')
            attach_file('Image', '/path/to/image.jpg')
            select('Option', :from => 'Select Box')
        end
            
        click_link 'Sign in'
    end
end