class Calculator


	def add(num1,num2)
		 result = num1 + num2
	end
	def subtract(num1,num2)
		result = num1 - num2
	end 

	def divide(num1,num2)
		result = num1 / num2
	end

	def multiply(num1,num2)
		result = num1 * num2
	end 
end
x = Calculator.new
puts x.divide(10,2)