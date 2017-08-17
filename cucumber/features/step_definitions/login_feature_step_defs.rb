
Given(/^I access the homepage$/) do
@driver = Watir::Browser.new :chrome
@driver.goto 'http://www.bbc.co.uk'

end
And(/^I navigate to the Register page$/) do
 sign_in_link = @driver.link id: 'idcta-link'
 sign_in_link.click
 register_link = @driverz.link class: 'link link--primary'
 register_link.click
 expect(@driver.url).to eq "https://account.bbc.com/signin"
end

When(/^I fill in all available fields$/) do
  
end

# And(/^click sign up$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I have a new account$/) do

# end


# And(/^i navigate to the Register page$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^I fill in all required fields$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# # And(/^click sign up$/) do
# #   pending # Write code here that turns the phrase above into concrete actions
# # end

# # Then(/^I have a new account$/) do

# # end



# And(/^i navigate to the sign up page$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^i do not fill in the date of birth fields$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^i click next$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should be shown an error message$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Given(/^i want navigate to the sign up page$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end



# Given(/^i submit the date of birth fields$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^i do not fill in all the require fields$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^i click the register button$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^i should be shown a error mesage$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end
