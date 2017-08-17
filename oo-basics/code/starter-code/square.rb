class Square 
	attr_accessor :length

	def initialize length
		@length = length

	end 
	def calculate_area 
		@length ** 2
	end

	def calculate_perimeter 
		@length * 4
	end

	def scale_square factor
		@length = factor * @length
	
		puts "#{calculate_area} and #{calculate_perimeter}"

	end
end


# square = Square.new(5)

# square.scale_square(10)
