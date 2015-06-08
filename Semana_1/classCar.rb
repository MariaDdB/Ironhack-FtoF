class Car

	#@@contador = 0

=begin
@@ Es una variable de clase (su valor es igual para
todos los objetos - si se cambia  uno se cambian todos-.)
=end
	attr_accessor :sound
	def initialize sound, color =  "rojo"
		@sound = sound
		new_file = IO.read("fichero.txt").to_i
		new_file += 1
		IO.write("fichero.txt", new_file)
		@color = color
		#@@contador += 1
	end

=begin
desde un método de instancia se pueden acceder tanto a 
variales de instancia, como variables de clase; PERO 
desde un método de clase (.SELF) SÓLO puede acceder
el método de CLASE.
=end

	def make_noise #todas las funciones tienen que tener un verbo delante
		puts @sound
	end

	def show_color
		puts @color
	end

	def self.get_cars
		IO.read("fichero.txt")
		#@@contador
	end

end

my_car = Car.new "Broom"
#my_car.make_noise
#my_car.show_color

my_new_car = Car.new "BROOOOOOOOOOOM!"
#my_new_car.make_noise
#my_new_car.show_color

#puts Car.get_cars

=begin
crear un objeto:
también se puede llamar al coche como "Car.new.make_noise",
pero una vez que se ejecute el código ese coche creado se perderá
al no estar guardado en una variable; por eso es mejor almacenarlo en
una variable como hemos hecho antes.
=end

=begin
variable de instancia: @
my_new_car = Car.new("BROOOOOOOOOOOM!")
si el parámetro se quiere poner con paréntesis
siempre pegado al nuevo objeto SIN ESPACIO
=end

class Racing_car < Car
	def initialize 
		@sound = "BROOOOOOOOOOOM"
	end
end

my_other_car = Racing_car.new
#my_other_car.make_noise

cars_array = [my_car, my_new_car, my_other_car]
#cars_array.each {|car| car.make_noise}

sounds = ["broom", "Meek", "Nyan"]
#car = []

#sounds.each do |sound|
#	car << Car.new(sound)
#end

cars = sounds.map do |sound|
	Car.new sound
end


total = cars_array.reduce("") do |str, car2|
	str + car2.sound
end

puts total