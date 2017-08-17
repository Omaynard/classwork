require 'cucumber'
require 'capybara'
require 'site_prism'
require 'active_support'

ActiveSupport::Dependecies.autoload_paths << File.join(Dir.pwd, 'lib')

Capybara.register_driver :chrome do |driver|
	Capybara::Selenium::Driver.new(driver,:browser => :chrome)
end

Capybara.configure do |config|
	config.ignore_hidden_elements = false
	config.default_driver = :chrome
	config.dafault_max_wait_time = 10 
end