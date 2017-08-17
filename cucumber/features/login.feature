Feature: BBC Login
As a bbc customer 
I want to be able to sign up and login
	
	Scenario: I am able to sign up as a customer using all fields
		Given I access the homepage
		And I navigate to the Register page 
		When I fill in all available fields
		And click sign up 
		Then I have a new account  

	Scenario: I am able to sign up using the required fields 
		Given I access the homepage
		And I navigate to the Register page 
		When I fill in all required fields
		And click sign up
		Then I have a new account 

	Scenario: I am unable to proceed when date of birth field is not filled in on the first register page 
		Given I access the homepage 
		And i navigate to the sign up page 
		When i do not fill in the date of birth fields 
		And i click next 
		Then I should be shown an error message 

	Scenario: I am unable to register when i when i do not fill in the required fields on the second register page
		Given I access the homepage 
		And i want navigate to the sign up page 
		And i submit the date of birth fields
		When i do not fill in all the require fields
		And i click the register button
		Then i should be shown a error mesage 
