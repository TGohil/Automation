require 'rspec'

require './tumblr_audio'
require './tumblr_chat'
require './tumblr_link'
require './tumblr_quote'
require './tumblr_text'

RSpec.configure do|config|
    config.color = true
    config.tty = true
    config.formatter = :documentation
end