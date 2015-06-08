class Character < ActiveRecord::Base
	def find_futureetic
		@characters = Character.where("(programming_language == ?)AND name != ?", self.programming_language, self.name)
	end
end
