class Rectangle
	attr_accessor :length, :width 

	def initialize length, width
		@length = length
		@width = width 
	end 
	def calculate_perimeter 
		(@length + @width)*2
	end
	def calculate_area 
		(@length * @width)

	end
	def scale_rectangle factor
		@length = factor * @length
		@width = factor * @width
	
		puts "#{calculate_area} and #{calculate_perimeter}"

	end
end