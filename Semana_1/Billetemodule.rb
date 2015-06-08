module Banco #se usa cuando dos clases llevan el mismo nombre
	class Billete
		attr_accessor :valor, :color
		def initialize valor, color
			@valor = valor
			@color = color
		end
	end
end

module Renfe
	class Billete
		attr_accessor :origen, :destino
		def initialize origen, destino
			@origen = origen
			@destino = destino
		end
	end
end

b = Banco::Billete.new 500, "morado" #(-module-::-clase-)
#forma de referenciar la class.
b2 = Renfe::Billete.new "Madrid", "Barcelona"
puts b2.origen