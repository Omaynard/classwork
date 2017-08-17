require 'spec_helper'


describe "save restaurant" do

	before(:all) do 
		@menu = Nokogiri::XML(open('./bakery_xml.xml'))
	end

	it "should not have any menu items with calories over 1000" do

		@menu.xpath('//calories').each do |x|
			
			expect(x.text.to_f).to be <= 1000.0
		end
	end

	it "should not have any price over £8" do 
		@menu.xpath('//price').each do |x|
			
			expect(x.text.gsub('£','').to_f).to be <= 8.0
		end

	end

	it "should have the homestyle breakfast at the most expensive" do
	 	maxprice = 0
	 	maxname = " "

		@menu.xpath('//food').each do |x|

			price = x.xpath('price').text.gsub('£','').to_f
			 
			if price > maxprice 
			 	maxprice = price
				maxname = x.xpath('name').text
			end

			expect(maxname).to be "Homestyle Breakfast"
		end
	end

	it "all waffles items should have two waffles stated in the item description" do

		@menu.xpath('//description').each do |x|
			if x.include?("waffles") || x.include?("Waffles")
				expect(x).to include("two").or expect(x).to include("Two")
			end
		end

	end

end