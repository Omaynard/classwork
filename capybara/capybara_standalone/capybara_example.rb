require 'capybara'

Capybara.register_driver :chrome do |driver|
	Capybara::Selenium::Driver.new(driver,:browser => :chrome)
end

Capybara.configure do |config|
	config.ignore_hidden_elements = false
end

driver = Capybara::Session.new(:chrome)
driver.visit('https://bbc.co.uk')
driver.click_link('idcta-link')
driver.fill_in('username-input', with: 'test@gmail.com')
driver.page.has_content?