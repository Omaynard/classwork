# This is the class, the blueprint for how to make a person 

class Person 

	attr_accessor :name, :sex, :age, :weight, :height
	
	def initialize name, sex, age, weight, height
		@name = name
		@sex = sex
		@age = age 
		@weight = weight.to_f
		@height = height.to_f

	end 
	def calculate_bmi 
  		(@weight / (@height  ** 2)).to_f
	end

	def calculate_calories 
	  	if sex == "Male"
	    	bmr = 66.47 + (13.7 * @weight) + (5 * @height * 100) - (6.8 * @age)
	  	else
	    	bmr = 655.1 + (9.6 * @weight) + (1.8 * @height * 100) - (4.7 * @age)
	  	end

  		bmr.to_i
	end
	def description
	puts "#{@name} has BMI of #{calculate_bmi}  recommended calories intake of #{calculate_calories}"
	end

end