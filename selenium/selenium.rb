require 'selenium-webdriver'

class Bbc
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



end
# bbc = Bbc.new
# bbc.sign_in_link.displayed?
# bbc.sign_in_link.click
# sleep(3)



# sleep(5)
#  driver.find_element(:id, 'idcta-link').click

#  sleep(3)

#  user_element = driver.find_element(:id, 'username-input')
#  user_element.send_keys("omay@msn.com")
 
#  sleep(4)

#  password_element = driver.find_element(:id, 'password-input')
#  password_element.send_keys("rubbish")
 

#  sleep(3)
#  driver.find_element(:id, 'submit-button').click

#  sleep(4)