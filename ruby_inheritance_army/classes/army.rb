class Army
	attr_reader :name, :base
	
	def initialize name
		@name = name
		@bases =[]


	end

	def make_base base_name, base_capacity
		base = Base_1.new(base_name, base_capacity)
		@bases.push(base)

	end


end