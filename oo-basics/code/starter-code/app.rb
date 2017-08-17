require_relative 'square.rb'
require_relative 'rectangle.rb'


# Squares
# side_length = 5
new_square = Square.new(12)
puts new_square.scale_square(10)
puts new_square.calculate_perimeter
puts new_square.calculate_area

new_rectangle = Rectangle.new(2,4)
puts new_rectangle.scale_rectangle(10)
puts new_rectangle.calculate_perimeter
puts new_rectangle.calculate_area



# def calculate_area length
#   length ** 2
# end

# def calculate_perimeter length
#   length * 4
# end

# area = calculate_area side_length
# perimeter = calculate_perimeter side_length

# puts "Area: #{area} Perimeter: #{perimeter}"

# # scale the square by a factor of 10
# side_length *= 10

# scaled_area = calculate_area side_length
# scaled_perimeter = calculate_perimeter side_length

# puts "Area: #{scaled_area} Perimeter: #{scaled_perimeter}"

