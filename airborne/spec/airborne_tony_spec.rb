require 'spec_helper'

describe 'airborne postcode stuff' do 

	before(:all) do 
	 get 'http://postcodes.io/postcodes/lu40lf'
	end

	it "has a status code of 200" do 
		expect_json(status: 200)
	end

	it 'should have a key of result' do 
		expect_json_keys(:result)
	end

	it "check within results that postcode has a string value " do 
		expect_json_types('result', postcode: :string)
	end

	it "check within results then codes for string nuts  " do 
		expect_json_types('result', codes: {nuts: :string})
	end

end