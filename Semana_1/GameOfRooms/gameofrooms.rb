require 'artii'
require 'colorize'

a = Artii::Base.new
puts a.asciify('Game of rooms').colorize(:blue)

class Game
	def initialize character
		@rooms = []
		@character = character
 	end

	def add_room room
		@rooms << room
	end

	def play
		playing = true
		while playing
			show_room @character.position
			puts ">"
			order_player = gets.chomp.upcase.to_sym
			current_room = get_room @character.position
			if current_room.paths.include? order_player
				id = current_room.paths[order_player]
				@character.position = id
			elsif order_player == :INV
				show_inventory
			elsif order_player == :PICK
				pick_object current_room.object
			else
				puts "wrong direction, choose new path >"
			end
		end
	end

	def get_room id
		room = @rooms.find{|room| id == room.id}
	end

	def show_room id
		room = @rooms.find{|room| id == room.id}
		puts room.messages
	end 

	def show_inventory
		if @character.inventory == []
			puts "no tienes nada en el inventario"
		else
			puts "tu inventario es:"
			@character.inventory.each do |object|
				puts object
			end
		end
	end
	def pick_object object
		@character.inventory << object
		puts "you pick a #{object[0]}"
	end
	def drop_object
		@character.inventory
	end
end

class Character
	attr_accessor :position, :inventory
	def initialize position
		@position = position
		@inventory = []
	end
end

class Room 
	attr_accessor :id, :paths, :messages, :object
	def initialize id, paths, messages, object = []
		@id = id
		@paths = paths
		@messages = messages
		@object = object
	end
end

room1 = Room.new 1, {:W => 3, :N => 2}, "You are in a dark room. There is a door at the north.", ["sword"]
room2 = Room.new 2, {:S => 1}, "You are in the forest. There is a lot of light. There is a bear sleeping" 
room3 = Room.new 3, {:E => 1, :N => 4}, "Esta es la habitación 3"
room4 = Room.new 4, {:E =>2, :S =>3}, "Esta es la habiatación 4"

character = Character.new 1

game = Game.new character 
game.add_room room1
game.add_room room2
game.add_room room3
game.add_room room4

game.play
game.show_room 3
game.show_inventory