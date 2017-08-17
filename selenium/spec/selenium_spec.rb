require 'spec_helper'
require_relative '../selenium.rb'

describe Bbc do 
	
	before(:all) do

		@bbc_site = BbcSite.new
		@bbc_site.go_to_bbc

	end

	it "should open the bbc homepage with the current url https://www.bbc.co.uk" do
		expect(@bbc_site.show_current_url).to eq("https://www.bbc.co.uk/")
	end

	it "should find the elements :id, 'idcta-link'" do 
		expect(@bbc_site.find_element(:id,'idcta-link').displayed?).to be true
	end

	it "should check it goes to the sign in page" do 
		@bbc_site.sign_in_link.click
		expect(@bbc_site.show_current_url).to eq "https://account.bbc.com/signin"
	end

	it "should find the element :id, 'username-input on the sign in page " do 
		@bbc_site.sign_in_link.click
		expect(@bbc_site.find_element(:id,'username-input').displayed?).to be true 
	end







end
