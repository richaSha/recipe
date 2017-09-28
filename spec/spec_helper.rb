ENV['RACK_ENV'] = 'test'
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')
