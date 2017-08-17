require 'json'

file = File.read('json_example.json')
parsed_json_to_hash = JSON.parse(file)

# parsed_json_to_hash.each do |key,value|
# 	puts key, value
# end
# parsed_json_to_hash['rates'].each do |k,v|
# 	puts k, v
# end
parsed_json_to_hash['rates'].each do |k,v|
	
	if v.is_a? (Array)
		
			puts k ,v[0]
		
	else 
		puts k, v 
	end

	
end

parse_json_to_hash['rates'].each do |k,v|

