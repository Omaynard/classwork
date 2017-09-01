require 'spec_helper'

describe "testing budget app" do 
	
	before(:all) do 
		Appium::Driver.new(desired_capabilities).start_driver
		Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
	end
	after(:all) do 
		driver_quit
	end
	it "has this id " do
		binding.pry
	end
	# it "clicks the budget watch icon" do 
	# 	x = find_elements(:id, "protect.budgetwatch:id/menu")
	# 	x[0].click
		
	# end
	# it "clicks the +  icon" do 
	# 	y = find_elements(accessibility_id:'Add')
	# 	y[0].click
	# end
	# it "send_keys to name field " do 
	# 	y = find_elements(:id, "protect.budgetwatch:id/budgetNameEdit")
	# 	y[0].send_keys("keys")
	# end
	# it "send_keys to value field " do 
	# 	y = find_elements(:id, "protect.budgetwatch:id/valueEdit")
	# 	y[0].send_keys("300")
	# end
	# it "clicks the save  icon" do 
	# 	y = find_elements(accessibility_id:'Save')
	# 	y[0].click
	# end

	# it "clicks the budget name" do 
	# 	x = find_elements(:id, "protect.budgetwatch:id/budgetName")
	# 	x[0].click
		
	# end
	# it "clicks the +  icon" do 
	# 	y = find_elements(accessibility_id:'Add')
	# 	y[0].click
	# end










end