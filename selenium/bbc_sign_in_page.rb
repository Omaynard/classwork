require 'selenium-webdriver'

class Bbc_signin
	def initialize
		Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
		@driver = Selenium::WebDriver.for :chrome
		
	end
	def go_to_bbc
		@driver.get "http://bbc.co.uk/"
		
	end
	def show_current_url
		@driver.current_url
	end


	def sign_in_link
		@driver.find_element(:id, 'idcta-link')
	end

	def find_element (id, value)
		@driver.find_element(id, value)
	end

	def send_keys
		username_input = @driver.find_element(:id, 'username-input')
		user_element.send_keys("omay@msn.com")
	end