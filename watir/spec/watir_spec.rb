require 'spec_helper'
require_relative '../watir_bbc.rb'


describe Bbc do

	before(:all) do
		@bbc_homepage = Bbc.new
		@bbc_homepage.go_to_homepage
	end 

	it "should be able to display BBC homepage" do
	   expect(@bbc_homepage.find_browser).to eq 'https://www.bbc.co.uk/'
	end
	it "should exist" do 
		expect(@bbc_homepage.find_element)
end


