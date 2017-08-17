require 'rspec'
require 'json'
require 'httparty'

describe 'json parsing test' do

	# file = JSON.parse(File.read('../json/json_example.json'))
	file = JSON.parse(HTTParty.get('http://api.fixer.io/latest').body)

		it "should be a Hash" do 
			expect(file.class).to eq Hash
		end

		it "should contain the base as EUR" do 
			expect(file["base"]).to eq 'EUR'
		end

		it "should have a date string" do 
			expect(file['date']).to be_kind_of(String)
		end
	
end

