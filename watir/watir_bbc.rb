require 'watir'

class Bbc 

	def initialize
		@browser = Watir::Browser.new :chrome
		
	end

	def go_to_homepage
		@browser.goto 'http://bbc.co.uk'
	end

	def find_url
		@browser.url
	end

	def find_element
		@browser.element(:id, 'idcta-link')
	end

	def go_to_login 
		login = @browser.link id: 'idcta-link'
		login.click
	end
	def username_input
		@browser.text_field id: 'username-input'
	end

	def password_input
		@browser.text_field id: 'password-input'
	end
	def sign_in_button 
		@browser.button id: 'submit-button'
	end

	bbc = Bbc.new
 bbc.go_to_homepage
 bbc.go_to_login
 bbc.username_input.set("yoooo")
 bbc.password_input.set("yoooo")
 bbc.sign_in_button.click

end



