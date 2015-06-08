require "pry"

class Counter
	attr_accessor :counter

	def initialize
		binding.pry #forma de detener la ejecución de pry
		@counter = Hash.new 0
		binding.pry #control + d - te dice que se siga ejecutando el código hasta que se encuentre otro binding.pry -
	end

	def add_element element
		binding.pry
		@counter[element] += 1
		binding.pry
	end
end

bottles_counter = Counter.new
bottles_counter.add_element "bezoya"
bottles_counter.add_element "bezoya"
bottles_counter.add_element "bezoya"
bottles_counter.add_element "solares"
bottles_counter.add_element "solares"
bottles_counter.add_element "solares"
bottles_counter.add_element "solares"
bottles_counter.add_element "solares"
bottles_counter.add_element "solares"

puts bottles_counter.counter