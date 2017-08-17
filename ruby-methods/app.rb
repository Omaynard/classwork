# def say_hello num1, num2, num3 
# 	puts  num1 + num2 + num3 
# end
# say_hello 1, 2 , 3
# # default arguments
# def create_user name, course="SDET9"
# 	puts "#{name} is in #{course}"
# end 
# create_user "Omar"
# #Splats
# def say_more_words *words
# 	puts words
# end
# say_more_words "Chica", "Toast", "Burrito"

def say what, *people, time
	people.each do |person|
		puts "Hey #{person}, #{what} at #{time}"
	end	
end

say "dont eat my burrito", "Mary", "Joseph", "Abel", "12pm"