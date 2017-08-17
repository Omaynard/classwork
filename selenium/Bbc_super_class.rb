require_relative 'selnium.rb'

class BbcSite
	def initialize
		Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
		@driver = Selenium::WebDriver.for :chrome
		
	end
	def self.bbc_homepage
		@bbc_homepage = Bbc.new
	end

	def self.bbc_sign_in_page
		@bbc_signin = Bbc_signin.new
	end
end