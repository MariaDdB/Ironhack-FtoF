class Animal
	def initialize name
		@name = name
	end
	
	def move
		"I go everywhere"
	end
end

class Dog < Animal
	def initialize name, color
		super name #está llamando al método name de la clase Animal
		@color = color
	end

	def move
		"I run everywhere"
	end
end