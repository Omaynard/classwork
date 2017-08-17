require_relative 'person.rb'
require 'mac/say'



# Person one
niall = Person.new("Niall","male", 25, 60, 1.75)
# person_one_name = "Bob";
# person_one_sex = "Male";
# person_one_age = 50;
# person_one_height = 1.86;
# person_one_weight = 85;



# puts "#{person_one_name} has a BMI of #{person_one_bmi}. Recommend calorie intake is #{person_one_calories} calories"

niall = Person.new("Niall","male", 25, 60, 1.75)

puts niall.description